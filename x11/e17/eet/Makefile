# $OpenBSD: Makefile,v 1.18 2012/11/10 15:02:59 stsp Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.7.1

EPOCH =			2

SHARED_LIBS +=  eet                  2.0      # 8.1

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c crypto eina iconv jpeg m pthread ssl z

LIB_DEPENDS =		x11/e17/eina>=2.0 \
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
