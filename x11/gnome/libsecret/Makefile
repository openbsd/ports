# $OpenBSD: Makefile,v 1.37 2015/10/15 05:50:49 ajacoutot Exp $

COMMENT=		library for storing and retrieving passwords and secrets

GNOME_PROJECT=		libsecret
GNOME_VERSION=		0.18.3
REVISION=		2

SHARED_LIBS +=  secret-1             1.0      # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre pthread z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS += docbook gobject-introspection vala
LIB_DEPENDS=		devel/glib2 \
			security/libgcrypt

# XXX see meta-gnome
#RUN_DEPENDS +=		x11/gnome/keyring

# unable to autolaunch a dbus-daemon without a $DISPLAY for X11
TEST_IS_INTERACTIVE=	X11
TEST_DEPENDS=		devel/py-gobject3 \
			x11/dbus-python

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
