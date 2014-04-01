# $OpenBSD: Makefile,v 1.55 2014/04/01 15:31:47 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	3.8.1
REVISION=	0
CATEGORIES=	mail


# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += pthread z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection

LIB_DEPENDS=	devel/glib2

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
