class Pwlist < Formula
    desc "pwlist"
    homepage "https://github.com/amyy54/pwlist"
    url "https://github.com/amyy54/pwlist/releases/download/v0.1.0/darwin-universal.tar.gz"
    sha256 "6dd407767abd59ede93dc2dee4ea079aca2efeb5373d7f280c72c40f20a5165c"
    version "0.1.0"

    def install
        bin.install "./pwlist"
        man.mkpath
        man1.install "./pwlist.1"
    end

    test do
        assert_match /\bpwlist: v0\.1\.0\b/, shell_output("#{bin}/pwlist -version")
    end
end
