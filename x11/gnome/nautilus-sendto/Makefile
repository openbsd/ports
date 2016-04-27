# $OpenBSD: Makefile,v 1.62 2016/04/27 21:01:26 jasper Exp $

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	3.8.3
REVISION=	0

CATEGORIES=	mail

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += pthread z iconv intl

MODULES=	x11/gnome

MODGNOME_TOOLS=	gobject-introspection
LIB_DEPENDS=	devel/glib2

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
