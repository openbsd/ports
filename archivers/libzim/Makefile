COMMENT =	reference implementation of the ZIM specification

DISTNAME =	libzim-9.1.0

SHARED_LIBS +=  zim                       2.1 # 0.0

CATEGORIES =	archivers

HOMEPAGE =	https://wiki.openzim.org/wiki/OpenZIM

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} icui18n icuuc lzma xapian zstd

SITES =			https://download.openzim.org/release/libzim/
EXTRACT_SUFX =		.tar.xz

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gtest
LIB_DEPENDS =		archivers/xz \
			archivers/zstd \
			databases/xapian-core \
			textproc/icu4c

TEST_ENV =		TMPDIR=${WRKDIR}

.include <bsd.port.mk>
