class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "a3f59b358e6a819568260144da78f867654d70d029c305d3fbaa566b35fbd4c6"
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