class Rival < Formula
  desc "Dispatch prompts to Codex and Gemini CLIs from Claude Code with session tracking and TUI dashboard"
  homepage "https://github.com/1F47E/rival"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.6.0/rival_darwin_arm64.tar.gz"
      sha256 "394f5895a460f10edd904796727a818a5499b94be57fd200ba5bb440240e5c82"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.6.0/rival_darwin_amd64.tar.gz"
      sha256 "4ab1e7b1ec690f42504bdd33601a328551d972efc4308ea97ac4750008dda6e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1F47E/rival/releases/download/v3.6.0/rival_linux_arm64.tar.gz"
      sha256 "67790ca5357131e7797225600ddf4a3c81f25303a9abb63f6530dfab8e91a7d2"
    end
    on_intel do
      url "https://github.com/1F47E/rival/releases/download/v3.6.0/rival_linux_amd64.tar.gz"
      sha256 "aa250163ad807245cb0d3f1184fe3168b62492245670dccf4e81fc5b0ac73da9"
    end
  end

  def install
    bin.install "rival"
  end

  test do
    system "#{bin}/rival", "version"
  end
end
