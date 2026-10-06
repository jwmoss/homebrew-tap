class Edcctl < Formula
  desc "Read Evolution Dance Complex schedules, balances, and app notifications"
  homepage "https://github.com/jwmoss/edcctl"
  url "https://github.com/jwmoss/edcctl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e6e147f92911e566f466dc629e289ad45c477007a72fa62efb167daf265b1563"
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
