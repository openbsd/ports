# $OpenBSD: Makefile,v 1.71 2021/05/24 17:24:34 sthen Exp $

COMMENT =	compiler cache

V =		4.3
DISTNAME =	ccache-$V

CATEGORIES =	devel

HOMEPAGE =	https://ccache.dev/

# GPLv3+
PERMIT_PACKAGE =	 Yes

WANTLIB += ${COMPILER_LIBCXX} c m zstd

MASTER_SITES =	https://github.com/ccache/ccache/releases/download/v$V/

MODULES =		devel/cmake
CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		archivers/zstd

# Failure in cpp1 test suite appears to be due to an embedded filename
# in a .o file present in one file, and not present in the file being
# compared with.
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -fs ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
