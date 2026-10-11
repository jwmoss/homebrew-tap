cask "edcctl" do
  version "0.2.1"

  on_macos do
    on_intel do
      sha256 "a6174d06169bac892de745944d5c08676011dd867233888382aff524bee6afda"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "fe945cb1303b3bfaa8c6d057a1ca0953715ee9a37e3cc2f5c5087ed06aefb51b"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "d2c58bed4383166fd650c462c8d13a72177efd265ec5b39b2ad50a05582f22f9"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "2e30e49d9e1bccda3a4c64a617b482834e4a64977b9c438c7cfe5fd58dbcf24f"
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
