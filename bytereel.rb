# Documentation: https://docs.brew.sh/Formula-Cookbook
class Bytereel < Formula
  desc "Coverts any file to a video"
  homepage "https://github.com/kaspar1ndustries/go-bytereel"
  
  license ""
  if Hardware::CPU.intel?
    url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.203/go-bytereel_Darwin_x86_64.tar.gz"
    sha256 "af6e8cdabce53361bab6105687707e4251df51ea65c4d2afc57116d44ce3ebfb"
  elsif Hardware::CPU.arm?
    url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.203/go-bytereel_Darwin_arm64.tar.gz"
    sha256 "737500fe368fa6c603d16ecadc8ed39db6416208d51973ebeb4225cff50e8e61"
  end


  def install
    bin.install "app"
  end

  test do
    system "#{bin}/app", ""
  end
end
