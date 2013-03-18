require 'formula'

class Gist < Formula
  homepage 'https://github.com/defunkt/gist'
  url 'https://github.com/defunkt/gist/archive/master.tar.gz'
  sha1 '67e17b00f2f3304bd1937f0d28e46a6adfbb1d13'
  head 'https://github.com/defunkt/gist.git'

  def install
    rake "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/gist", '--version'
  end
end
