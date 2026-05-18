class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.4.0/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "ae72c45c86d3beb583ffd78c575c03da9e6e49632a2d0c257fe46c64fb87b7b0"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.4.0/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "c18691970fd95c0264a17e9c51723997fd2797a96f99f91dbed360ed0b555a0f"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
