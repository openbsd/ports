# $OpenBSD: Makefile,v 1.48 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		library for storing and retrieving passwords and secrets

GNOME_PROJECT=		libsecret
GNOME_VERSION=		0.18.8

REVISION=		0

SHARED_LIBS +=  secret-1             2.0      # 0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error iconv intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		docbook gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			security/libgcrypt

# XXX circular dependency, see meta/gnome
# org.freedesktop.secrets
# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
#RUN_DEPENDS +=		x11/gnome/keyring

CONFIGURE_STYLE=	gnu

# unable to autolaunch a dbus-daemon without a $DISPLAY for X11
TEST_IS_INTERACTIVE=	X11

MODULES +=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
TEST_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

.include <bsd.port.mk>
