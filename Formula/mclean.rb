class Mclean < Formula
  desc "Simple macOS system data cleaner"
  homepage "https://github.com/ANGRYCONE/Simple-macOS-System-Data-Cleaner"
  url "https://github.com/ANGRYCONE/Simple-macOS-System-Data-Cleaner/releases/download/v2.4/macos_cleaner.sh"
  sha256 "97206ac4223af55a565c0291682c8d95ae74db5dea4c978ce45cfdc160a0e7c5"
  version "2.4"

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
