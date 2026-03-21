class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.10.0/rival_darwin_arm64.tar.gz"
      sha256 "8bce130ed39c98be434251c41fed989da893e1e6408a020bd7232b2d2dbab4f1"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.10.0/rival_darwin_amd64.tar.gz"
      sha256 "ddbd0a26c91ce0307269e3c017037a3565554d0cc37724ec0c0a1df1067d5a70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.10.0/rival_linux_arm64.tar.gz"
      sha256 "921e9221ac3c97bb62d97738e4e9e178e82a307dcd6b2f33609c81800f6b2288"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.10.0/rival_linux_amd64.tar.gz"
      sha256 "4a97a4cffc3a0c5dffd54e660a548c329fd091650bca7b9c2076c48c96905c48"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
