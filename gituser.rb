# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gituser < Formula
  desc ""
  homepage "https://github.com/lucasnevespereira/homebrew-tools"
  version "1.2.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.7/gituser_1.2.7_Darwin_x86_64.tar.gz"
      sha256 "14ecd833ce7e000d7b9840dd78e09e5c33e1da333f1312b6ce281e5cfed39ca0"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.7/gituser_1.2.7_Darwin_arm64.tar.gz"
      sha256 "cfe56047d0564b99eb87eca48763e7614b50092c8c868f23af558f9b32e76236"

      def install
        bin.install "gituser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.7/gituser_1.2.7_Linux_x86_64.tar.gz"
      sha256 "9a0d8c4eca79de4a74ed290ac941a724dd95bb32a66d1b98d97381cf4390a9ea"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.7/gituser_1.2.7_Linux_arm64.tar.gz"
      sha256 "9d13c8640645cc4995014f1d0cee8a1f4e7dcef87ca0783fcea1affac8d7cf92"

      def install
        bin.install "gituser"
      end
    end
  end
end
