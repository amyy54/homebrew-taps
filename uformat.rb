class Uformat < Formula
    desc "uformat"
    homepage "https://github.com/amyy54/uformat"
    url "https://github.com/amyy54/uformat/releases/download/v0.3.0/darwin-universal.tar.gz"
    sha256 "8e1884961853c93ed567afad958e36e53653db5337f897886a172482b00cea5d"
    version "0.3.0"

    def install
        bin.install "./uformat"
        man.mkpath
        man1.install "./uformat.1"
    end

    test do
        assert_match /\buformat: v0\.3\.0\b/, shell_output("#{bin}/uformat -version")
    end
end
