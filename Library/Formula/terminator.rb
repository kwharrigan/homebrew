require 'formula'

class Terminator < Formula
  url 'http://launchpad.net/terminator/trunk/0.96/+download/terminator_0.96.tar.gz'
  homepage 'http://www.tenshu.net/p/terminator.html'
  md5 '070e3878336b341c9e18339d89ba64fe'

  depends_on 'gettext' => :build, 'intltool' => :build
  depends_on 'pygtk'
  depends_on 'vte'
  depends_on 'hicolor-icon-theme'
  
  def install
    msgfmt = `which #{HOMEBREW_PREFIX}/Cellar/gettext/*/bin/msgfmt`.split(' ')[0]
    inreplace 'setup.py' do |s|
      s.gsub! "'msgfmt'", "'#{msgfmt}'"
    end
    system "python", "setup.py", "build"
    system "python", "setup.py", "--without-icon-cache", "install", "--prefix=#{prefix}"
  end

  def test
    system "terminator"
  end
end