class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.4.1/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "066d37ce902068c2d41259f151b6876702d05df5740e9fa7d6f28985195d495d"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.4.1/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "989b09de3f412552ccd93161f1a4405edaa37a05a4eccad49c80db67cd61668f"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
