class Edcctl < Formula
  desc "Read Evolution Dance Complex schedules, balances, and app notifications"
  homepage "https://github.com/jwmoss/edcctl"
  url "https://github.com/jwmoss/edcctl/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "4d33e72abf38f64d44f7446c1402de5d84d4646d7ec1718dd9f57c3b226e826b"
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
