cask "noteyard" do
  version "0.1.13"

  on_arm do
    sha256 "5697e880a1e0e27d10a3ec28e5cb9b09c1906d2f2b2444f46ed9d35ba37a1094"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d66da80c34911f41ff1ad73be79200ac715a0993341dae0ca21a19336c17f7b4"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
