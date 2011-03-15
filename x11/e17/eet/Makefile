# $OpenBSD: Makefile,v 1.16 2011/03/15 19:40:40 jasper Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.4.0

EPOCH =			2

SHARED_LIBS +=  eet                  1.4      # 5.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c crypto eina jpeg m pthread ssl z

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.0 \
			graphics/jpeg

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc \
			--disable-gnutls
# perf ?
#			--enable-amalgamation
#			--disable-assert

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -I${LOCALBASE}/lib"

.include <bsd.port.mk>
