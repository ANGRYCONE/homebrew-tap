class Mclean < Formula
  desc "macOS System Cleaner"
  homepage "https://github.com/ANGRYCONE/macOS-System-Cleaner"
  url "https://github.com/ANGRYCONE/macOS-System-Cleaner/releases/download/v2.4.4/macos_cleaner.sh"
  sha256 "d9e5ff14687aa0c41f6dd9d56c9f2b4b342882d3fa7431256cfdca85d6f0e490"
  version "2.4.4"

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
