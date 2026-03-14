class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.5.0/rival_darwin_arm64.tar.gz"
      sha256 "05b1656f0fbad6105c7b7a79052431c9aa71d45a3e32faa084733544b5768434"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.5.0/rival_darwin_amd64.tar.gz"
      sha256 "8e1202da4ec079d9e5b5ae3bf91a8295cdaec30e832b92f39d77e654b886a2b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.5.0/rival_linux_arm64.tar.gz"
      sha256 "797f980f979262cf0bf3cd5b24debac38090a603df9dca8aa2070fa5afe788b3"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.5.0/rival_linux_amd64.tar.gz"
      sha256 "3b8bc402ca082c0b4dd4dc6e40e1f689cea98b3fd41178060c0e1587e818bec1"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
