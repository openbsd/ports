# $OpenBSD: Makefile,v 1.24 2013/03/11 11:46:09 espie Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.7.5
EPOCH =			2

SHARED_LIBS +=  eet                  3.0      # 8.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto eina jpeg m pthread ssl z

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.5v1 \
			graphics/jpeg

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc \
			--disable-gnutls
# perf ?
#			--enable-amalgamation
#			--disable-assert

# configure script doesn't heed LDFLAGS correctly, so put -L into CFLAGS, too
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -I${LOCALBASE}/lib"

.include <bsd.port.mk>
