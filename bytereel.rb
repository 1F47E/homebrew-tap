# Documentation: https://docs.brew.sh/Formula-Cookbook
class Bytereel < Formula
  desc "Coverts any file to a video"
  homepage "https://github.com/kaspar1ndustries/go-bytereel"
  
  license ""
  if Hardware::CPU.intel?
    url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.202/go-bytereel_Darwin_x86_64.tar.gz"
    sha256 "7952612da5a82c4c8d8066038a0bfd05ba9cce3db904bbc026159682f3e0c5bc"
  elsif Hardware::CPU.arm?
    url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.202/go-bytereel_Darwin_arm64.tar.gz"
    sha256 "b62f3c2a306cd7a94e50756af7006d0dcdf4777a2b2c7c57d27fa8e079021676"
  end


  def install
    bin.install "app"
  end

  test do
    system "#{bin}/app", ""
  end
end
