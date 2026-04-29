class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.1.0/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "37579b6106a166feaa1428ae33dbe0468696a8afcfc35810a2bf2c21fb88c64a"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.1.0/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "e85fa9aa1184aaaf08c927f13c44a6819fbc25fb3d0acbaa6249f75b043dd5f2"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
