class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.7.0/rival_darwin_arm64.tar.gz"
      sha256 "64e0673f346388f348d34f40c49c722f48f33ac8a6b6d16ff4c94b8402656bf6"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.7.0/rival_darwin_amd64.tar.gz"
      sha256 "d474d25ac82da662ddf77b1154ca7c4d57a587dc81a2b207cd11ea70cf480eab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.7.0/rival_linux_arm64.tar.gz"
      sha256 "f2e5f386346ef4005e1ed7de6d86971895e30b25385f6516babdc8ad3ee04956"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.7.0/rival_linux_amd64.tar.gz"
      sha256 "b03d32c958de3a5489a483669d846452107e7cbfdc78cc30a9280b367105fc69"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
