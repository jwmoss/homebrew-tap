cask "edcctl" do
  version "0.2.0"

  on_macos do
    on_intel do
      sha256 "d2c37120b82fd1d4193a6dd3cba39861b8af4a61dea79b5b8caba9db515ed357"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "4ace4e42330590e6f1927888f8b866761878e2bf8deb31c2dc2344e11efb8679"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "48ce88cec2007ac1f3ef8f84e775fefa1cf6091da1f545e866e976cc3013d8ad"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "cef95c4893749c6886486d9fdd1b46d65e2dcc0c97ab4fb009e54fe52903e246"
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
