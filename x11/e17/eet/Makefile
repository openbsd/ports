# $OpenBSD: Makefile,v 1.32 2019/09/07 13:16:47 naddy Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file

DISTNAME =		eet-1.7.10
EPOCH =			2
REVISION =		0

SHARED_LIBS +=	eet                  4.0      # 8.10

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto eina iconv jpeg m pthread ssl z

LIB_DEPENDS =		converters/libiconv \
			x11/e17/eina>=1.7.10v1 \
			graphics/jpeg

CONFIGURE_ARGS =	--disable-doc \
			--disable-gnutls

# configure script doesn't heed LDFLAGS correctly, so put -L into CFLAGS, too
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -I${LOCALBASE}/lib"

.include <bsd.port.mk>
