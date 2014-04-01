# $OpenBSD: Makefile,v 1.34 2014/04/01 18:06:31 jasper Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	3.12.0

SHARED_LIBS +=  gnome-keyring        7.0      # 2.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += dbus-1 ffi gcrypt glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre pthread

MODGNOME_TOOLS +=	gobject-introspection vala
MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	security/libgcrypt \
		x11/dbus \
		devel/glib2

# org.freedesktop.secrets
# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
RUN_DEPENDS +=	x11/gnome/keyring

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS} \
			devel/py-gobject3 #test-gi.py
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
