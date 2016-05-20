Here be dragons.

This is how I build linux packages for [fzy](https://github.com/jhawthorn/fzy).
I used to build debian packages by setting up debhelper editing the config
files and building that way, but it was too much of a nuisance. I never did
figure out how to make an RPM package.

Enter [fpm-cookery](https://github.com/bernd/fpm-cookery), a homebrew inspired
rubygem which generates .deb and .rpm packages. The packages aren't exactly up
to the standard that the standard tools generate, but they're very much good
enough. `lintian` now only gives a few warnings.

Docker is used so that I can generate these packages from my preferred arch
linux system.

This allows me to make new releases by editing the version and md5 sum in
recipe.rb and simply running `sh build.sh` and receive updated packages in the
pkg/ directory.
