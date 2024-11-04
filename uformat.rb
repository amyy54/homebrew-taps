class Uformat < Formula
    desc "uformat"
    homepage "https://github.com/amyy54/uformat"
    url "https://github.com/amyy54/uformat/releases/download/v0.2.0/darwin-universal.tar.gz"
    sha256 "83f674c6b86691e3ea7e37c6a776346dfb395cae35949ef3621d1893f1f16fa7"
    version "0.2.0"

    def install
        bin.install "./uformat"
    end

    test do
        assert_match /\buformat: v0\.2\.0\b/, shell_output("#{bin}/uformat -version")
    end
end
