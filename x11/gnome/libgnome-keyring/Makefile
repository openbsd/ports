# $OpenBSD: Makefile,v 1.28 2013/09/26 07:53:15 ajacoutot Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	3.10.0

SHARED_LIBS +=  gnome-keyring        7.0      # 2.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += dbus-1 ffi gcrypt glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre pthread

MODGNOME_TOOLS=	gi vala

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	security/libgcrypt \
		x11/dbus \
		devel/glib2

# test-gi.py
TEST_DEPENDS=	devel/py-gobject3

.include <bsd.port.mk>
