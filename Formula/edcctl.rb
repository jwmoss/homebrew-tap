class Edcctl < Formula
  desc "Read Evolution Dance Complex schedules, balances, and app notifications"
  homepage "https://github.com/jwmoss/edcctl"
  url "https://github.com/jwmoss/edcctl/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "5e6f80af9f6946e0706d17a81f5cc9529fb6a5c0194cdd2835bbafafba109e87"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-s -w -X github.com/jwmoss/edcctl/internal/cli.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/edcctl"
  end

  test do
    assert_match "\"version\": \"#{version}\"", shell_output("#{bin}/edcctl --json version")
    assert_match "schedule", shell_output("#{bin}/edcctl --help")
  end
end
