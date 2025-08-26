COMMENT =		XML manipulation library

VERSION =		0.18.3
DISTNAME =		libnxml-${VERSION}
REVISION =		10
CATEGORIES =		textproc
SITES =			http://www.autistici.org/bakunin/libnxml/
SHARED_LIBS =		nxml 0.0 # 18.3

HOMEPAGE=		http://www.autistici.org/bakunin/libnxml/doc

# LGPL v2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  crypto curl iconv intl nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl pthread ssl z

LIB_DEPENDS =		devel/gettext,-runtime \
			net/curl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
