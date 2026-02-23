class EngTeamReporter < Formula
  desc "Generate engineering team activity reports from JIRA, GitHub, and Confluence"
  homepage "https://github.com/zagware/eng-team-reporter"
  version "1.0.8"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-arm64.tar.gz"
    sha256 "bd5600c8136544934ff293fd89dd1d4dfcf824c38f45eef944918e046b441ad2"
  else
    url "https://github.com/zagware/eng-team-reporter-dist/releases/download/v#{version}/eng-team-reporter-#{version}-macos-x64.tar.gz"
    sha256 "3166b1362ace15ba8608fce193c24d7bf53971b341811c9baf12c04917c06136"
  end

  def install
    bin.install "eng-team-reporter"
  end

  test do
    assert_match "Engineering Team Reporter", shell_output("#{bin}/eng-team-reporter --version")
  end
end
