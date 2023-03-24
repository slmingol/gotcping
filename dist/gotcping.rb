# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotcping < Formula
  desc "Yet another tcping for golang."
  homepage "https://www.github.com/slmingol/gotcping"
  version "0.0.1-alpha-next"
  license "MIT"

  depends_on "go"
  depends_on "coreutils"

  on_macos do
    url "https://github.com/slmingol/gotcping/releases/download/0.0.1-alpha/gotcping_0.0.1-alpha-next_Darwin_x86_64.tar.gz"
    sha256 "70816b96fc972922be908dfd4e990ab089baff3b59d571ed106367efcd954582"

    def install
      bin.install "gotcping"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Gotcping
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/slmingol/gotcping/releases/download/0.0.1-alpha/gotcping_0.0.1-alpha-next_Linux_x86_64.tar.gz"
      sha256 "73082380046e3b0eaf81102f6ab88809e47962c87c0471dd30783215e03c4549"

      def install
        bin.install "gotcping"
      end
    end
  end

  test do
    system "#{bin}/gotcping"
  end
end
