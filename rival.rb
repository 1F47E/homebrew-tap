class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.9.0/rival_darwin_arm64.tar.gz"
      sha256 "793786bd819a39be3838831579fb55dcea7a5b0daefaab52a871efd8ebb07742"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.9.0/rival_darwin_amd64.tar.gz"
      sha256 "2122abd3cc5cd1ef3b8dafe79a2bac8cc3cec5b71d29b53543f9c053154a2009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.9.0/rival_linux_arm64.tar.gz"
      sha256 "f8f95260f71cbb3d60d06891f2eac82a32147a221ee8ed826d884e161ac84220"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.9.0/rival_linux_amd64.tar.gz"
      sha256 "5be2da06d74e0f7216b2ff95eece9d611628f648050fab1ce0b7db9c226d9d5c"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
