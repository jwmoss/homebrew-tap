class Edcctl < Formula
  desc "Read Evolution Dance Complex schedules and app notifications"
  homepage "https://github.com/jwmoss/edcctl"
  url "https://github.com/jwmoss/edcctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1210bcfd7113ca24355326edac2be7d4d1b727fd5cb7a3b493044b74aba9582f"
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
