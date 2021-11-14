# $OpenBSD: Makefile,v 1.76 2021/11/14 13:53:23 sthen Exp $

COMMENT =	compiler cache

V =		4.5
DISTNAME =	ccache-$V

CATEGORIES =	devel

HOMEPAGE =	https://ccache.dev/

# GPLv3+
PERMIT_PACKAGE =	 Yes

WANTLIB += ${COMPILER_LIBCXX} c hiredis m zstd

MASTER_SITES =	https://github.com/ccache/ccache/releases/download/v$V/

MODULES =		devel/cmake
CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		textproc/asciidoctor
LIB_DEPENDS =		archivers/zstd \
			databases/libhiredis

# Failure in cpp1 test suite appears to be due to an embedded filename
# in a .o file present in one file, and not present in the file being
# compared with.
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -fs ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
