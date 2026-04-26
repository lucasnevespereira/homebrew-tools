class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.5.5.tar.gz"
  sha256 "97a999994aabb51082cbeecbfe4163e9501682c13a086b3b12a662392c90854d"
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