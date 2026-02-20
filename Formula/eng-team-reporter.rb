class EngTeamReporter < Formula
  desc "Generate engineering team activity reports from JIRA, GitHub, and Confluence"
  homepage "https://github.com/zagware/eng-team-reporter"
  version "1.0.6"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/zagware/eng-team-reporter/releases/download/v#{version}/eng-team-reporter-#{version}-macos-arm64.tar.gz"
    sha256 "f25ca51cd4172047220f4ed90766763c7422e25cb65e7f4f866c414e27db6570"
  else
    url "https://github.com/zagware/eng-team-reporter/releases/download/v#{version}/eng-team-reporter-#{version}-macos-x64.tar.gz"
    sha256 "7d95a4bc3c6ea317f11a69356b572323eedec0b9578571ced629a55d723aff36"
  end

  def install
    bin.install "eng-team-reporter"
  end

  test do
    assert_match "Engineering Team Reporter", shell_output("#{bin}/eng-team-reporter --version")
  end
end
