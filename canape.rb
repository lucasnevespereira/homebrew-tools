class Canape < Formula
  desc "Control the TV and share the Wi-Fi on any network"
  homepage "https://github.com/lucasnevespereira/canape"
  url "https://github.com/lucasnevespereira/canape/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "d6ad0cdedb4bc5f7bf5b95b86616250c9048bc30f29b4d1b375c098c4e3996b4"
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
