# $OpenBSD: Makefile,v 1.6 2009/01/20 10:43:53 jasper Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.1.2
PKGNAME= 		${DISTNAME}p3

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-idle}

WANTLIB=		c crypto dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 \
			pcre pthread ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		telepathy-glib::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OPENSSL_LIBS="-L/usr/lib -lssl -lcrypto" \
			OPENSSL_CFLAGS="-I/usr/include" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
