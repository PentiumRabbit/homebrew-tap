cask "noteyard" do
  version "0.1.14"

  on_arm do
    sha256 "560d2af8e70db5cbec472da62ee5f5fd8055206e42e2cd31cb7ca44121a01796"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6407df930647d46969828c9d4248f064dbf71c80aca5671491059339354338eb"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
