cask "noteyard" do
  version "0.1.16"

  on_arm do
    sha256 "aeda0c4cd6e23b5e5b66401e9675fdd0724329392449f1767f0378bd8b4fd223"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b562a4f2e4014900407541ca02e5da2365ee735fc9ebc959656dd98801f41411"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
