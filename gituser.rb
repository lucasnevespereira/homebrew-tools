# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gituser < Formula
  desc ""
  homepage "https://github.com/lucasnevespereira/homebrew-tools"
  version "1.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.4/gituser_1.2.4_Darwin_x86_64.tar.gz"
      sha256 "f661beb4a67551be8929b828fb0bd8489d83bf1253329697d006cefd49c348bd"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.4/gituser_1.2.4_Darwin_arm64.tar.gz"
      sha256 "660eda92272fffbe2d441bb707d2e6148df49076959f0c9be7222906cbc24f34"

      def install
        bin.install "gituser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.4/gituser_1.2.4_Linux_x86_64.tar.gz"
      sha256 "9b71767cebf0805b233be72db7bdabbb58cce8172ab85e1b9650f34a44f424d6"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.2.4/gituser_1.2.4_Linux_arm64.tar.gz"
      sha256 "286dd90eecdee637beb2475eb3b64d164f47ece3f40dcb82536a311da3e4a066"

      def install
        bin.install "gituser"
      end
    end
  end
end
