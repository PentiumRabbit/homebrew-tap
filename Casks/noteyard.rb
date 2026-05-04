cask "noteyard" do
  version "0.1.10"

  on_arm do
    sha256 "18e558d7d1f06046d4c1266413d974d1c3fa47b590039d97e9cb175eca842ab6"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "14a54f4729944440afcc714900d33bb4143024b2ae2d72b5fb3253f19609fbdf"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
