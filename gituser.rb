class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.5.4.tar.gz"
  sha256 "64b666ef7a441bc20e384690146c4a6abfc86d96cacaf57af5e4150154de7871"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/lucasnevespereira/go-gituser/cmd.AppVersion=#{version}"
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gituser --version")
  end
end