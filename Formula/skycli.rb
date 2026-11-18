class Skycli < Formula
  desc "Unofficial CLI for the Skylight Calendar private API"
  homepage "https://github.com/jwmoss/skycli"
  url "https://github.com/jwmoss/skycli/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "8de636fe74559884151a47d73526ed231aa74139b1a61df6a6a588dd4d006d6d"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-s -w -X github.com/jwmoss/skycli/internal/cli.version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skycli version")
    assert_match "analytics", shell_output("#{bin}/skycli commands --json")
  end
end
