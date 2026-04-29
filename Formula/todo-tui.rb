class TodoTui < Formula
  desc "Keyboard-driven terminal todo manager built with Rust and ratatui"
  homepage "https://github.com/PentiumRabbit/todo-tui"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.2.1/todo-tui-aarch64-apple-darwin.tar.gz"
      sha256 "2975924b528b0d9d130dfbcdcdc065da2811014052648153acc5e370462de1bf"
    else
      url "https://github.com/PentiumRabbit/todo-tui/releases/download/v0.2.1/todo-tui-x86_64-apple-darwin.tar.gz"
      sha256 "794acc3c5801518cf7d0a6d547966feabfe77ec43bb27e152e527473c107426d"
    end
  end

  def install
    bin.install "todo-tui"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/todo-tui --version 2>&1", 1)
  end
end
