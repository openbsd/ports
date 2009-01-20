# $OpenBSD: Makefile,v 1.3 2009/01/20 10:43:54 jasper Exp $

BROKEN= 		needs avahi

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.1.5
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-salut/}

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
