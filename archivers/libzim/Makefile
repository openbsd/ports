COMMENT =	reference implementation of the ZIM specification

DISTNAME =	libzim-8.1.1

SHARED_LIBS +=  zim                       0.0 # 0.0

CATEGORIES =	archivers

HOMEPAGE =	https://wiki.openzim.org/wiki/OpenZIM

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} icui18n icuuc lzma xapian zstd

MASTER_SITES =		https://download.openzim.org/release/libzim/

EXTRACT_SUFX =		.tar.xz

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

LIB_DEPENDS =		archivers/xz \
			archivers/zstd \
			databases/xapian-core \
			textproc/icu4c

.include <bsd.port.mk>
