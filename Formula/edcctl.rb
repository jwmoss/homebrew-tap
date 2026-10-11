class Edcctl < Formula
  desc "Read Evolution Dance Complex schedules, balances, and app notifications"
  homepage "https://github.com/jwmoss/edcctl"
  url "https://github.com/jwmoss/edcctl/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ae87e2713962e674ad1efc174e4de27242b46b6781faecefef98a396591a61b2"
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
