cask "edcctl" do
  version "0.1.0"

  on_macos do
    on_intel do
      sha256 "584d464b2daa0e26d256cdd5e46edae1f36e14e358cd5ad3a9ffc9d6ca6b8b01"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "eff5149f26fcb352d7fe07baaec15128b8125721bb9d10b6d52bf3a3db20f177"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f5b32a81e46e7e164a11ec8630cd3ad351334f16e61b3894f9d055e5a39f5429"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "d47866f7a885354d5c3c14a6051d5342f1d545082962e6af4f3cdbd4ef0fa33f"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_arm64.tar.gz"
    end
  end

  name "edcctl"
  desc "Read Evolution Dance Complex schedules and app notifications"
  homepage "https://github.com/jwmoss/edcctl"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "edcctl"
end
