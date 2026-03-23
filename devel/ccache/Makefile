COMMENT=	C/C++ compiler front-end to cache compiled object code

V=		4.13.2
DISTNAME=	ccache-$V

D=		2.4.12
DISTFILES.dt=	doctest-$D{doctest}.h
SITES.dt=	https://github.com/doctest/doctest/releases/download/v$D/
EXTRACT_ONLY=	${DISTFILES}

CATEGORIES=	devel

HOMEPAGE=	https://ccache.dev/
SITES=		https://github.com/ccache/ccache/releases/download/v$V/

# GPLv3+
PERMIT_PACKAGE=	 Yes

WANTLIB += ${COMPILER_LIBCXX} c fmt hiredis m xxhash zstd

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	textproc/asciidoctor \
		devel/tl-expected
LIB_DEPENDS=	archivers/zstd \
		databases/libhiredis \
		devel/fmt \
		sysutils/xxhash

TEST_DEPENDS=	shells/bash \
		sysutils/coreutils
# or set CC=egcc, etc, to force a different compiler.
# tests are a little slow, you may want to set MAKE_JOBS.
TEST_ENV=	CC=cc
# posix_spawnp() behaviour doesn't match assumptions of tests wrt exit
# codes, TEST_CASE("util::exec_to_string") fails because it expects
# "posix_spawnp failed: No such file or directory" and actually gets
# "Non-zero exit code: 127"

post-extract:
	mkdir ${WRKDIR}/bin/doctest # yeah I know, but cmake searches there...
	cp ${FULLDISTDIR}/doctest-$D.h ${WRKDIR}/bin/doctest/doctest.h
	sed -i 's,^#!/bin/bash,#!/bin/ksh,' ${WRKSRC}/doc/scripts/gen*
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/test/{run,fake-compilers/*}

pre-test:
	ln -fs ${LOCALBASE}/bin/gstat ${WRKDIR}/bin/stat

.include <bsd.port.mk>
