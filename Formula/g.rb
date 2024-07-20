# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class G < Formula
  desc "generator thing"
  homepage "https://github.com/quinn/g"
  version "0.0.8"

  on_macos do
    on_intel do
      url "https://github.com/quinn/g/releases/download/v0.0.8/g_Darwin_x86_64.tar.gz"
      sha256 "4ab31fc5c0b717130f3629c36d7ce8f261a8acbce2a1e2a6b9aaecd73a6e131c"

      def install
        bin.install "g"
      end
    end
    on_arm do
      url "https://github.com/quinn/g/releases/download/v0.0.8/g_Darwin_arm64.tar.gz"
      sha256 "d7f10e9fa3c7e3eaaf97133b7c6ad6150acb1e76b5372cb2d93b300aa606aad4"

      def install
        bin.install "g"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/quinn/g/releases/download/v0.0.8/g_Linux_x86_64.tar.gz"
        sha256 "2187e84371aa3d124546d7393c1334afca04062934784194a9fe5595c4691f8c"

        def install
          bin.install "g"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/quinn/g/releases/download/v0.0.8/g_Linux_arm64.tar.gz"
        sha256 "aff9383632843b95e622f63caa30c9bf6fba84e3b009a7dcdf82f175c0c9a3b8"

        def install
          bin.install "g"
        end
      end
    end
  end

  test do
    system "#{bin}/g -help"
  end
end
