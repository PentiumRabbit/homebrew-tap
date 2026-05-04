cask "noteyard" do
  version "0.1.9"

  on_arm do
    sha256 "193fe44bfde8da2b568f93cc65520bc36155fd09ce87aff1c723e8a78c391402"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3f444ce7e861af6e492cc4a2db0f0371482d0406ebacb51716700ba167d78da2"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
