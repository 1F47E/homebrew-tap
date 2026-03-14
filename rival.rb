class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.4.0/rival_darwin_arm64.tar.gz"
      sha256 "a83bab073bcc7035bd19bdd09b3244b91f704dfa123138d7c3ab37f27a69939e"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.4.0/rival_darwin_amd64.tar.gz"
      sha256 "7105e147fb15a0633358b76fda430dd9a23b4c7c6f1f3957482c2f044a273ff7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.4.0/rival_linux_arm64.tar.gz"
      sha256 "b6a11776da24b00e73ab14944ad34d548481da5fb99daa9c8fa462ecfc53a9b4"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.4.0/rival_linux_amd64.tar.gz"
      sha256 "5999503eee0e6ef56c76605afc96f1c616c3cd57fdfee01b8595207f61857ee1"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
