cask "noteyard" do
  version "0.1.18"

  on_arm do
    sha256 "713d77c93c10b1a1fea8152cc4bd85b55ad596819a9f161254d9350391b039ef"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a95e8255bb3fe707f0046db92db5b884dd038b29f2a6d7dd0fcf6b33639d865b"
    url "https://github.com/PentiumRabbit/noteyard/releases/download/v#{version}/noteyard_#{version}_x64.dmg"
  end

  name "noteyard"
  desc "A local-first note-taking app"
  homepage "https://github.com/PentiumRabbit/noteyard"

  app "noteyard.app"
end
