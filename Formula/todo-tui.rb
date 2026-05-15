class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.3.0/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "30d5818db806a243cd018c7fb3486e88c26f73e03caa20d44afc85703bce1164"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.3.0/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "f3c61b778abe6aa462a3065e1a980c51320241a96ca9537dc6bdb1bd6c67a6a6"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
