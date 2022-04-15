BROKEN-sparc64=	No fibers support for sparc64

PHP_VERSION=	8.1.5
PHP_PKGSPEC=	>=8.1,<8.2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.71

# BDEP needed as well as LIB_DEPENDS-main because -main is knocked
# out for "embed" builds.
# xxhash is used as a header-only library here; the file is included in
# the PHP distribution in a subdir but /usr/local/include is ahead in the
# -I path so that gets picked up in preference. make it explicit by
# adding the dep.
BUILD_DEPENDS=		devel/capstone/main \
			sysutils/xxhash
LIB_DEPENDS-main=	devel/capstone/main
WANTLIB-main=		capstone

.include <bsd.port.mk>
