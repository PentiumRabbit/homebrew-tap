cask "noteyard" do
  version "0.1.12"

  on_arm do
    sha256 "9fb0b9b0342c403daa00e6f41d2485edc80635e26591216df65a09cd3ced0859"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f07796b8e412db4ed68a727a62ea8ec922a9e2d952a061e5181c8a79e271ca31"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
