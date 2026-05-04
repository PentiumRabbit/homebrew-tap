cask "noteyard" do
  version "0.1.7"

  on_arm do
    sha256 "c22e3598a98f70800963f146b371bfe621a6c67fd6ebf14217badd51c084da23"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e0b91109ab592a4d49a5fc53cae302b5b754de04cf88ffb7b6370917ca5f2a27"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
