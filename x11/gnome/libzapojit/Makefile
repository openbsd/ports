# $OpenBSD: Makefile,v 1.8 2014/04/01 18:06:31 jasper Exp $

COMMENT=	GLib/GObject wrapper for SkyDrive and Hotmail REST APIs

GNOME_PROJECT=	libzapojit
GNOME_VERSION=	0.0.3
REVISION=	1

API_V=		0.0
SUBST_VARS=	API_V

SHARED_LIBS +=  zapojit-0.0               0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gthread-2.0 json-glib-1.0 m pcre pthread rest-0.7 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/online-accounts

MODGNOME_TOOLS +=	gobject-introspection
.include <bsd.port.mk>
