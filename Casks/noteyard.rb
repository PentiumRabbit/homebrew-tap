cask "noteyard" do
  version "0.1.17"

  on_arm do
    sha256 "e102e9d097671715e595f3f6d9e09b16f4706c1984a22b41e133e3ea453e3c68"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a2b19195911c8e72775a1eb9a1ec68c80f67b4c1caff8ae6c8fd218d2ce04952"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
