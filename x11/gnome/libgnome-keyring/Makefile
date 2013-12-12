# $OpenBSD: Makefile,v 1.31 2013/12/12 16:44:09 ajacoutot Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	3.10.1
REVISION=	0

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

# org.freedesktop.secrets
# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
RUN_DEPENDS +=	x11/gnome/keyring

# test-gi.py
TEST_DEPENDS=	devel/py-gobject3

.include <bsd.port.mk>
