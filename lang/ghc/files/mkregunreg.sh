# $OpenBSD: mkregunreg.sh,v 1.1 2007/07/21 17:14:57 kili Exp $
#
# Create register and unregister scripts for updating the Cabal
# package registry.
# This script must be called from the ghc build directory.

prefix="$1"
pkg_conf="$prefix/lib/ghc/package.conf"
ghc_pkg="$prefix/bin/ghc-pkg"

umask 022

my_ghc_pkg() {
	./utils/ghc-pkg/ghc-pkg.bin --global-conf ./driver/package.conf "$@"
}

for p in $(my_ghc_pkg list --simple-output); do
	echo $p $p
	set -- $(my_ghc_pkg field $p depends)
	shift
	for d; do
		echo $p $d
	done
done > deps

exec > register.sh
cat <<- 'EOF'
	#! /bin/sh
	exec > /dev/null
EOF

tsort -r deps |
while read p; do
	echo "$ghc_pkg register - << 'EOF'"
	my_ghc_pkg describe $p
	echo EOF
done
echo rm -f $pkg_conf.old

exec > unregister.sh
cat <<- 'EOF'
	#! /bin/sh
	exec > /dev/null
EOF

tsort deps |
sed "s!^!$ghc_pkg unregister !"

cat <<- EOF
	rm -f $pkg_conf.old
	# If no packages are left, just remove the registry.
	if echo '[]' | cmp -s - $pkg_conf; then
		rm -f $pkg_conf
	fi
EOF
