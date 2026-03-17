  class Logmx < Formula
    desc "Aggregate and stream logs from multiple platforms"
    homepage "https://github.com/lucasnevespereira/logmx"
    url "https://github.com/lucasnevespereira/logmx/archive/refs/tags/v0.1.0.tar.gz"
    sha256 ""
    license "MIT"

    depends_on "go" => :build

    def install
      ldflags = "-s -w -X main.version=#{version}"
      system "go", "build", *std_go_args(ldflags:), "./cmd/logmx"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/logmx --version")
    end
  end