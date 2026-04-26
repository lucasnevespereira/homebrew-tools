# typed: false
# frozen_string_literal: true

class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  version "1.5.4"

  on_macos do
    url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.5.4.tar.gz"
    sha256 "64b666ef7a441bc20e384690146c4a6abfc86d96cacaf57af5e4150154de7871"

    def install
      bin.install "gituser"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.5.4-beta.1/gituser-linux-arm64.tar.gz"
      sha256 "ffc6c8f13f63d488c4537b4267ea75ab66a18d1b1aa0c5a2fc23aee98e889b1a"

      def install
        bin.install "gituser"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasnevespereira/go-gituser/releases/download/v1.5.4-beta.1/gituser-linux-amd64.tar.gz"
      sha256 "36fbea62249f681413be8b7bd59928874abb201d3af6adfcc3ac84a551c09045"

      def install
        bin.install "gituser"
      end
    end
  end
end