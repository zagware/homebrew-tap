class EngTeamReporter < Formula
  desc "Generate engineering team activity reports from JIRA, GitHub, and Confluence"
  homepage "https://github.com/zagware/eng-team-reporter"
  version "1.0.15"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-arm64.tar.gz"
    sha256 "9745d18a2683b30b16a771d7d6f38b084d9c87f304b7c308bdc802b36942de54"
  else
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-x64.tar.gz"
    sha256 "b4033454eb3e1d49e9de35b82d2fd979d8f3cd9e77df5ad2b7c0876b8cd5edbb"
  end

  def install
    bin.install "eng-team-reporter"
  end

  test do
    assert_match "Engineering Team Reporter", shell_output("#{bin}/eng-team-reporter --version")
  end
end
