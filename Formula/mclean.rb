class Mclean < Formula
  desc "macOS System Cleaner"
  homepage "https://github.com/ANGRYCONE/macOS-System-Cleaner"
  url "https://github.com/ANGRYCONE/macOS-System-Cleaner/releases/download/v2.4.1/macos_cleaner.sh"
  sha256 "f0233127b01bed211ca1e8ac8b33fe2cc3b5a78646dab642be5abee89cb2298f"
  version "2.4.1"

  depends_on :macos

  def install
    libexec.install "macos_cleaner.sh"

    (bin/"mclean").write <<~SH
      #!/bin/sh
      exec "#{libexec}/macos_cleaner.sh" --skip-update "$@"
    SH

    chmod 0755, libexec/"macos_cleaner.sh"
  end
end
