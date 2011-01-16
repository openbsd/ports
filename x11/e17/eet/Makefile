# $OpenBSD: Makefile,v 1.15 2011/01/16 11:18:00 jasper Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.4.0.beta2

REVISION =		0
EPOCH =			1

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
