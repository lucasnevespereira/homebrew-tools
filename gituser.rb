# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gituser < Formula
  desc ""
  homepage "https://github.com/lucasnevespereira/homebrew-tools"
  version "1.3.5"

  on_macos do
    url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.3.5/gituser_1.3.5_darwin_all.tar.gz"
    sha256 "f6e46c80b434271e30998319a751e0a0df115afb13c8d4509b1a76671b3db50b"

    def install
      bin.install "gituser"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.3.5/gituser_1.3.5_linux_amd64.tar.gz"
      sha256 "4e9145441f8614fcede992cb875f3d5422e08e11e47e0fcc7abbd7a588517e36"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.3.5/gituser_1.3.5_linux_arm64.tar.gz"
      sha256 "21f3641dfa154a2cbbaa935dd6752178e6d580ba2fc6e8b4663cf5edeabdb618"

      def install
        bin.install "gituser"
      end
    end
  end
end
