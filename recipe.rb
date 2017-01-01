class Fzy < FPM::Cookery::Recipe
  homepage 'http://github.com/jhawthorn/fzy'
  source   'https://github.com/jhawthorn/fzy/archive/0.8.tar.gz'
  md5      '3eb3aeaaaced57bf74af82fc7ad8528e'

  name     'fzy'
  version  '0.8'
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
