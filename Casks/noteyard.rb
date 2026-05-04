cask "noteyard" do
  version "0.1.8"

  on_arm do
    sha256 "c40ff4beba3530da65d33c68803713fe49417ce0f0a876eca4535dbfdd9cd1ad"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a2363d9c29624d7acdc82abdf62cbb32da431cafa6a7b90ed691babab1f98d85"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
