class Tc < Formula
    desc "(T)ime (C)onverter"
    homepage "https://github.com/amyy54/tc"
    url "https://amyy.me/static/files/tc/v0.1.0/darwin-universal.tar.gz"
    sha256 "c92e4667ac7c4a50e3b9eba927ac8016daa4447eff1c485e4b42a16657557206"
    version "0.1.0"

    def install
        bin.install "./tc"
    end

    test do
        assert_match /\btc 0\.1\.0\b/, shell_output("#{bin}/tc --version")
    end
end

