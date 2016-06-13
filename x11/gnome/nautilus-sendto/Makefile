# $OpenBSD: Makefile,v 1.64 2016/06/13 09:05:55 ajacoutot Exp $

COMMENT=		applications integration into Nautilus

GNOME_PROJECT=		nautilus-sendto
GNOME_VERSION=		3.8.4

CATEGORIES=		mail net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection
LIB_DEPENDS=		devel/glib2

FAKE_FLAGS=		schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
