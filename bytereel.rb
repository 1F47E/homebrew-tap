# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bytereel < Formula
  desc "ByteReel converts any file to a video"
  homepage "https://github.com/kaspar1ndustries/go-bytereel"
  version "0.209"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.209/go-bytereel_Darwin_arm64.tar.gz"
      sha256 "4098d57b034020607acba064a72938c0be60b58e443991b23ff460b237dd6287"

      def install
        bin.install "bytereel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.209/go-bytereel_Darwin_amd64.tar.gz"
      sha256 "038079e4f8dc324a73906c76131f6968fd2583860907974e28ffc3bfbfe4bf54"

      def install
        bin.install "bytereel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.209/go-bytereel_Linux_arm64.tar.gz"
      sha256 "c18452374e77d6b0c8d20953340a1766cdec8e2cfccd238a3f9c710aa3d59da3"

      def install
        bin.install "bytereel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kaspar1ndustries/go-bytereel/releases/download/v0.209/go-bytereel_Linux_amd64.tar.gz"
      sha256 "543a8b266ae61aa814b48973f1378169c37d72aaa5ea400300133da0ce774f23"

      def install
        bin.install "bytereel"
      end
    end
  end

  test do
    system "#{bin}/bytereel", ""
  end
end
