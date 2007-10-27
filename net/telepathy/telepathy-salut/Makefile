# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:54 jasper Exp $

BROKEN= 		needs avahi

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.1.5

MASTER_SITES=		http://telepathy.freedesktop.org/releases/telepathy-salut/

WANTLIB=		dbus-1 glib-2.0 gobject-2.0

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OPENSSL_LIBS="-L/usr/lib -lssl -lcrypto" \
			OPENSSL_CFLAGS="-I/usr/include"

.include <bsd.port.mk>
