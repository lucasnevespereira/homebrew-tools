class Gituser < Formula
  desc "Switch between git accounts easily"
  homepage "https://github.com/lucasnevespereira/go-gituser"
  url "https://github.com/lucasnevespereira/go-gituser/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "eecd14082b6e733d489e8c4e989e8e35a6a352dce38dc40b319b3669914f6304"
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