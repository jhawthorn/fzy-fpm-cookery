class Fzy < FPM::Cookery::Recipe
  homepage 'http://github.com/jhawthorn/fzy'
  source   'https://github.com/jhawthorn/fzy/archive/0.5.tar.gz'
  md5      '209cd9dce5d3a371bc8f3bea4c0bdb1b'

  name     'fzy'
  version  '0.5'
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
