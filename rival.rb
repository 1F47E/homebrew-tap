class Rival < Formula
  desc "Dispatch prompts to Codex, Antigravity, and Claude CLIs from Claude Code with session tracking and TUI/web dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.11.0/rival_darwin_arm64.tar.gz"
      sha256 "2e9fee8ad33f1afdeff7de714cfbd46c70145183c53ea0f465e02735208f7d15"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.11.0/rival_darwin_amd64.tar.gz"
      sha256 "887c2118a952f088adda644afac29b0d62a386637978df7eaceac0a6ef308e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.11.0/rival_linux_arm64.tar.gz"
      sha256 "b9fdc681ec179db64ddfce86316de36c622102529f2b2fe96ace0680333e14e4"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.11.0/rival_linux_amd64.tar.gz"
      sha256 "47ce0c8041955963b16917facd898077e16c26ef824974be8f972112b16eb3e0"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
