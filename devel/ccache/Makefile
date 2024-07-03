COMMENT=	C/C++ compiler front-end to cache compiled object code

V=		4.10.1
DISTNAME=	ccache-$V

CATEGORIES=	devel

HOMEPAGE=	https://ccache.dev/

# GPLv3+
PERMIT_PACKAGE=	 Yes

WANTLIB += ${COMPILER_LIBCXX} c fmt hiredis m xxhash zstd

SITES=		https://github.com/ccache/ccache/releases/download/v$V/

MODULES=	devel/cmake

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	textproc/asciidoctor
LIB_DEPENDS=	archivers/zstd \
		databases/libhiredis \
		devel/fmt \
		sysutils/xxhash

# needs https://github.com/doctest/doctest, wants to download at
# configure time if not available
NO_TEST=	Yes

CONFIGURE_ARGS=	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR} \
		-DDEPS=offline \
		-DENABLE_TESTING=OFF

.include <bsd.port.mk>
