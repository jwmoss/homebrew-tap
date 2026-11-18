cask "edcctl" do
  version "0.2.3"

  on_macos do
    on_intel do
      sha256 "067c22bdd1a8ea8648f65cc6f08fd8c151db30660f11ffedc27716730aa325f7"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "44badb4c19c168d4d876f11b1bf8214361e601a31f499cad621fdcbc0a7cc57f"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f8f77ee938c71e68fa9905094454da8e53d20dd529ec7cb1e222f3d0a9d5591e"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "b0260400ce3db1207b4721ccb4e1a0f21cc4ee2e523cf58c261e003652e17bf2"
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
