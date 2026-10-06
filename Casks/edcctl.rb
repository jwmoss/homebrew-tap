cask "edcctl" do
  version "0.1.1"

  on_macos do
    on_intel do
      sha256 "1a096e84607e56d24836645afaa569afb815aaa1ae02ef7370909e74afdece81"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "8f466bfb2a9a27b6ad0f900e1f5d7a7e6ecda6c552a2f41b5763254fab05a1ee"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "b78ea15ad77db2b7f93089f75095f5c0a32a54df4f301ed248f87549fb31a71a"
      url "https://github.com/jwmoss/edcctl/releases/download/v#{version}/edcctl_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "79b11c685924af299c184664ac3aabf66cdec759a9a81d341c266076959c0099"
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
