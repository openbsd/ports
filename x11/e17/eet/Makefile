# $OpenBSD: Makefile,v 1.13 2011/01/16 00:35:27 laurent Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.4.0.beta2
PKGNAME =		eet-1.4.0

EPOCH =			0

SHARED_LIBS +=		eet 1.4

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c crypto eina iconv jpeg m pthread ssl z

LIB_DEPENDS =		x11/e17/eina>=1.0 \
			graphics/jpeg

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc \
			--disable-gnutls
# perf ?
#			--enable-amalgamation
#			--disable-assert

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -I${LOCALBASE}/lib -lcrypto" \
			OPENSSL_CFLAGS=" " \
			OPENSSL_LIBS="-lssl"

.include <bsd.port.mk>
