class EngTeamReporter < Formula
  desc "Generate engineering team activity reports from JIRA, GitHub, and Confluence"
  homepage "https://github.com/zagware/eng-team-reporter"
  version "1.0.9"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-arm64.tar.gz"
    sha256 "c3e28ebacfa737770531c7e375e703be6779172444a319acbe7f0df34b478df9"
  else
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-x64.tar.gz"
    sha256 "dcba9594e296107881182d6ddfcf92472e7d32925d5d40dd90a4c5be1cd2cf37"
  end

  def install
    bin.install "eng-team-reporter"
  end

  test do
    assert_match "Engineering Team Reporter", shell_output("#{bin}/eng-team-reporter --version")
  end
end
