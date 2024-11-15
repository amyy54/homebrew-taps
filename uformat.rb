class Uformat < Formula
    desc "uformat"
    homepage "https://github.com/amyy54/uformat"
    url "https://github.com/amyy54/uformat/releases/download/v0.4.0/darwin-universal.tar.gz"
    sha256 "739956a3a74bfd768b3e001592d5195c3c019e06265f4e483d18e14076d800d7"
    version "0.4.0"

    def install
        bin.install "./uformat"
        man.mkpath
        man1.install "./uformat.1"
    end

    test do
        assert_match /\buformat: v0\.4\.0\b/, shell_output("#{bin}/uformat -version")
    end
end
