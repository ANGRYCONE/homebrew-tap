class Mclean < Formula
  desc "Simple macOS system data cleaner"
  homepage "https://github.com/ANGRYCONE/Simple-macOS-System-Data-Cleaner"
  url "https://github.com/ANGRYCONE/Simple-macOS-System-Data-Cleaner/releases/download/v2.3/macos_cleaner.sh"
  sha256 "0a77ee7fb4f2451b50a48661d85f325ec974e650157f50ca5dd1476a6b08848c"
  version "2.3"

  def install
    bin.install "macos_cleaner.sh" => "mclean"
  end
end
