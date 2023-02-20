COMMENT =	C/C++ compiler front-end to cache compiled object code

V =		4.7.3
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

# Failure in cpp1 test appears to be due to an embedded filename
# in a .o file present in one file, and not present in the file being
# compared with.
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		shells/bash
TEST_ENV =		CC="${CC}"

# evertyhing except tests
ALL_TARGET =		ccache doc

# build whatever is left (ca. 35 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
