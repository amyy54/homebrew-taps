class Wii < Formula
  desc "C toolchain for the Nintendo Wii"
  homepage "https://github.com/amyy54/wii-toolchain"
  head "https://github.com/amyy54/wii-toolchain.git"

  depends_on "make" => :build
  depends_on "texinfo" => :build
  depends_on "wget" => :build
  depends_on "zlib" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "gmake"
  end
end
