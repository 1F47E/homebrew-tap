class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.8.0/rival_darwin_arm64.tar.gz"
      sha256 "332f93a4e5c8f190f968a9b6d4d429330437db42190220b501741af5cd512d87"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.8.0/rival_darwin_amd64.tar.gz"
      sha256 "75fa81cec1c8bf2d8b61079cfa5d82e1a1c110caf65e7b2882ca5259bc52507d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.8.0/rival_linux_arm64.tar.gz"
      sha256 "aace79c7f5102c9bb06ab2bfea1fb5b6487407ba3f062d7496818a9cf4dd33c4"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.8.0/rival_linux_amd64.tar.gz"
      sha256 "c54e431f38f303db3329fb1fe1f1c2729a287195cd210ac4985fd2b1bca130a9"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
