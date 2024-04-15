COMMENT =	common code base for all Kiwix ports

KIWIX_PROJECT =	libkiwix
V =		13.1.0

SHARED_LIBS +=  kiwix                     1.0 # 0.0

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += curl icui18n icuuc m microhttpd pugixml xapian z zim

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gtest \
			devel/kainjow-mustache
LIB_DEPENDS =		archivers/libzim \
			databases/xapian-core \
			net/curl \
			textproc/pugixml \
			www/libmicrohttpd

CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
