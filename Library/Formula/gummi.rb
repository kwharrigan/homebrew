require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gummi < Formula
  homepage 'http://dev.midnightcoding.org/projects/gummi'
  url 'http://dev.midnightcoding.org/attachments/download/263/gummi-0.6.3.tar.gz'
  md5 '6d02259d237c35c149d6a5f61f76ad3e'

  depends_on 'gettext'
  #depends_on 'gtksourceview'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gummi`.
    system "false"
  end
end
