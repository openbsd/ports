# $OpenBSD: Makefile,v 1.3 2013/03/30 08:34:00 ajacoutot Exp $

COMMENT=	GLib/GObject wrapper for SkyDrive and Hotmail REST APIs

GNOME_PROJECT=	libzapojit
GNOME_VERSION=	0.0.3

API_V=		0.0
SUBST_VARS=	API_V

SHARED_LIBS +=  zapojit-0.0               0.0 # 0.0

HOMEPAGE=	https://live.gnome.org/Zapojit

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += dbus-1 ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += goa-1.0 gobject-2.0 gpg-error gthread-2.0 json-glib-1.0
WANTLIB += m pcre pthread rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/online-accounts

MODGNOME_TOOLS=	goi

.include <bsd.port.mk>
