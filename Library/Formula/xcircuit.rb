require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Xcircuit < Formula
  homepage 'http://opencircuitdesign.com/xcircuit/'
  url 'http://opencircuitdesign.com/xcircuit/archive/xcircuit-3.8.24.tgz'
  sha1 'a93b72314c59c3b93e92fb9960757c26c3b9d219'

  depends_on :x11 # if your formula requires any X11/XQuartz components
  depends_on 'tcl'
  depends_on 'tk'

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test xcircuit`.
    system "false"
  end
end
