# $OpenBSD: Makefile,v 1.29 2015/01/25 07:46:44 rpe Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file

DISTNAME =		eet-1.7.10
EPOCH =			2

SHARED_LIBS +=	eet                  4.0      # 8.10

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto eina jpeg m pthread ssl z

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.10v1 \
			graphics/jpeg

CONFIGURE_ARGS =	--disable-doc \
			--disable-gnutls

# configure script doesn't heed LDFLAGS correctly, so put -L into CFLAGS, too
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -I${LOCALBASE}/lib"

.include <bsd.port.mk>
