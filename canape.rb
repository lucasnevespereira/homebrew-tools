class Canape < Formula
  desc "Control the TV and share the Wi-Fi on any network"
  homepage "https://github.com/lucasnevespereira/canape"
  url "https://github.com/lucasnevespereira/canape/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e4a76228ddaa8e0d8cda3f122ec77af695f5b8ca835c24e61ed7809027449323"
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
