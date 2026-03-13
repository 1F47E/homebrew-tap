class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.3.0/rival_darwin_arm64.tar.gz"
      sha256 "3885bb66b08d03bfc90a13dc24468be2d8d687e36751de0a1d0aeb14c2e2ebea"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.3.0/rival_darwin_amd64.tar.gz"
      sha256 "858bdab76851b85ac3f476447fe9f50b85496c5cff40073b9d5e02d2b8044b86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.3.0/rival_linux_arm64.tar.gz"
      sha256 "00f828f2949b29957c8bed5278705efb6d82c49b882f6e59b61a7405e35a0dbe"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.3.0/rival_linux_amd64.tar.gz"
      sha256 "ea1e135d95db90954efcfacc3e5b95058637506f5714a840c3f90c9014ef11eb"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
