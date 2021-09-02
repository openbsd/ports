# $OpenBSD: Makefile,v 1.57 2021/09/02 08:14:35 ajacoutot Exp $

COMMENT=		library for storing and retrieving passwords and secrets

GNOME_PROJECT=		libsecret
GNOME_VERSION=		0.20.4

SHARED_LIBS += secret-1                  2.1 # 0.0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gcrypt gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			security/libgcrypt

# XXX circular dependency, see x11/gnome/keyring
# org.freedesktop.secrets; gnome-keyring-*|keepassxc-*:x11/gnome/keyring
#RUN_DEPENDS +=		x11/gnome/keyring

CONFIGURE_ARGS=		-Dgtk_doc=false

# unable to autolaunch a dbus-daemon without a $DISPLAY for X11
TEST_IS_INTERACTIVE=	X11

MODULES +=		lang/python
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
TEST_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

.include <bsd.port.mk>
