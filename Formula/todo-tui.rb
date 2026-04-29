class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.2.0/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "abd19f32e901ea4af4df21e8ef108c7261841df41ff2a9ec37ec73b6e00c3cdf"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.2.0/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "8e4db9ee6ae3b0f7088e909436d7aaad777576c91346a74e66acebba9c137698"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
