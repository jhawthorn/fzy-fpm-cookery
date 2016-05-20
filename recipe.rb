class Fzy < FPM::Cookery::Recipe
  homepage 'http://github.com/jhawthorn/fzy'
  source   'https://github.com/jhawthorn/fzy/archive/0.4.tar.gz'
  md5      'bfb974fc160f34153a01ab7f59551539'

  name     'fzy'
  version  '0.4'
  revision '1'

  maintainer 'John Hawthorn <john.hawthorn@gmail.com>'
  license 'MIT'

  section 'misc'

  description 'A better fuzzy finder.'

  def build
    make
  end

  def install
    bin.install 'fzy'
    man1.install 'fzy.1'

    safesystem "strip #{bin}/fzy"
    safesystem "gzip -9 #{man1}/fzy.1"
  end
end
