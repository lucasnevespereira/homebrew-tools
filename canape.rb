class Canape < Formula
  desc "Control the TV and share the Wi-Fi on any network"
  homepage "https://github.com/lucasnevespereira/canape"
  url "https://github.com/lucasnevespereira/canape/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "cb8185b1387937c0a831bc7e18125fe47d97adc15793801817d80242928d63f2"
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
