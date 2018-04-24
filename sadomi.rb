require "formula"

class Sadomi < Formula
  homepage "http://www.sadomi.com"
  desc "SADOMI: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/sadomi/sadomi.git"
  end

  stable do
    url "https://github.com/sadomi/sadomi/archive/1.zip"
    sha256 "a2a5fd8de46bb5f357637c0689b3be90dd6a19c7b44921985c8c4c087a47bd39"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/sadomid", "./build/release/src/simplewallet"
  end
end