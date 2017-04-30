# $OpenBSD: Makefile,v 1.3 2017/04/30 10:36:43 ajacoutot Exp $

COMMENT=		network-related giomodule for GLib using openssl

GNOME_VERSION=		2.50.2
GNOME_PROJECT=		glib-openssl
REVISION=		1

CATEGORIES=		security net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl pcre pthread ssl z

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2
TEST_DEPENDS=		${BASE_PKGPATH}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem

post-install:
	rm ${PREFIX}/lib/gio/modules/*.{a,la}

.include <bsd.port.mk>
