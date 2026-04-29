class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v#{version}/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v#{version}/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/todo-tui --version 2>&1", 1)
  end
end
