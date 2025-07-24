cask "gituser" do
  version "1.5.0"
  sha256 :no_check # GoReleaser fills this in on release

  url "https://github.com/lucasnevespereira/go-gituser/releases/download/v#{version}/gituser_#{version}_macOS_all.tar.gz"
  name "Gituser"
  desc "CLI tool to manage Git users"
  homepage "https://github.com/lucasnevespereira/go-gituser"

  conflicts_with formula: "gituser"

  binary "gituser"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/gituser"],
                   must_succeed: false
  end
end
