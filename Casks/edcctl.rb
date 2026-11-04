cask "edcctl" do
  version "0.2.2"

  on_macos do
    on_intel do
      sha256 "f2aa52cc99ed3e6a2cd3f47aac5b6562f25586e2185480aade6941f57359ad66"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "a0d6074d4fe760f4c294f87f49ac89ec3cbeafd14b60e51b77daf40cc80f8217"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "ff353f9b6733c393efdebe2686faa1f21f1c4949ef1bd8d9954ad7a9e78150a7"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "f8213f93122c9e6bb4290eea2c1e9f9dbe6601701eca93c321b79d18c40000d5"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_arm64.tar.gz"
    end
  end

  name "edcctl"
  desc "Read Evolution Dance Complex schedules, balances, and app notifications"
  homepage "https://github.com/jwmoss/edcctl"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "edcctl"
end
