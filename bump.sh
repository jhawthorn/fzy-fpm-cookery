if [ -z $VERSION ]; then
	echo "VERSION is required" >&2
	exit 1
fi

MD5=$(curl -L "https://github.com/jhawthorn/fzy/archive/$VERSION.tar.gz" | md5sum | cut -d' ' -f1)
sed -i "/^  source/c\\  source   'https://github.com/jhawthorn/fzy/archive/$VERSION.tar.gz'" recipe.rb
sed -i "/^  md5/c\\  md5      '$MD5'" recipe.rb
sed -i "/^  version/c\\  version  '$VERSION'" recipe.rb
