class Canape < Formula
  desc "Control the TV and share the Wi-Fi on any network"
  homepage "https://github.com/lucasnevespereira/canape"
  url "https://github.com/lucasnevespereira/canape/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "242e05b2bcb4aa4889b02d004b16ac5ba56d001f03e3418ab7c20bc1a25320d7"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/lucasnevespereira/canape/internal/version.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canape --version")
  end
end
