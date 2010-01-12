# $OpenBSD: Makefile,v 1.8 2010/01/12 08:41:53 ajacoutot Exp $

COMMENT =		library to write an arbitary set of chunks of data to a file
DISTNAME =		eet-1.2.1
PKGNAME =		${DISTNAME}v0p0

SHARED_LIBS +=  eet                  1.0      # .3.1

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c crypto m pthread ssl z

LIB_DEPENDS =		eina::x11/e17/eina \
			jpeg::graphics/jpeg

USE_LIBTOOL =		Yes

CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -lcrypto -pthread" \
			OPENSSL_CFLAGS="-I/usr/include" \
			OPENSSL_LIBS="-lssl"
CONFIGURE_ARGS +=	--disable-gnutls \
			--enable-openssl 

.include <bsd.port.mk>
