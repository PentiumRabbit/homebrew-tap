cask "noteyard" do
  version "0.1.15"

  on_arm do
    sha256 "a5d0913109dd4a0a3ee2e06a533cb062470327932eab0b90b4c0b9c13ae700f3"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "435ea618dad0ad2bf78ca0f6a7aaa6a07ef7118219a5a9467181253dda927095"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
