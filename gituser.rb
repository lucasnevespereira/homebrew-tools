class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "029e87030f1b1898ef994eef2f7e13c4414fa2062ecef18d520135f886435b6a"
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