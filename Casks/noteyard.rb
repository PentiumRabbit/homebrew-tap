cask "noteyard" do
  version "0.1.11"

  on_arm do
    sha256 "b4e878e226a796169601adad8ce30a88e2946677d1a5c30ba7bd90354594193c"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fcfde576cd1d97b3ee46ba57ab1b04c1593349a4d4045a78da7aa72117f403ac"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
