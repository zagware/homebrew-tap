class EngTeamReporter < Formula
  desc "Generate engineering team activity reports from JIRA, GitHub, and Confluence"
  homepage "https://github.com/zagware/eng-team-reporter"
  version "1.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-arm64.tar.gz"
    sha256 "19f920cc616659c016733b390a36b9e2631e8ca5213efd29f7eb67fa8dc3e2c8"
  else
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-x64.tar.gz"
    sha256 "1fbf4bfbf51725d5bfc0bdbb573c0a621da524c7a537360c439dfbc07ff7418d"
  end

  def install
    bin.install "eng-team-reporter"
  end

  test do
    assert_match "Engineering Team Reporter", shell_output("#{bin}/eng-team-reporter --version")
  end
end
