class Canape < Formula
  desc "Control the TV and share the Wi-Fi on any network"
  homepage "https://github.com/lucasnevespereira/canape"
  url "https://github.com/lucasnevespereira/canape/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "de5ea0b8f7f1330bd3872c4a029620e11861a523906136347d0109d209e6b451"
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
