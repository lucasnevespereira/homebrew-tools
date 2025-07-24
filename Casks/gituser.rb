cask "gituser" do
  version "1.4.1"
  sha256 "ccaff42a91dbeca96ff63532e9d9cfdf4bd70b5a2c51da861b31844bf78bbfe5"

  url "https://github.com/lucasnevespereira/go-gituser/releases/download/v#{version}/gituser_#{version}_darwin_all.tar.gz"
  name "gituser"
  desc "CLI tool to manage git accounts"
  homepage "https://github.com/lucasnevespereira/homebrew-tools"

  binary "gituser"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/gituser"], must_succeed: false
  end
end
