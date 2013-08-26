# $OpenBSD: Makefile,v 1.23 2013/08/26 16:15:47 ajacoutot Exp $

COMMENT=	library for storing and retrieving passwords and secrets

GNOME_PROJECT=	libsecret
GNOME_VERSION=	0.16

SHARED_LIBS +=  secret-1             0.1      # 0.0

HOMEPAGE=	https://live.gnome.org/Libsecret

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre pthread z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gi vala

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS=	devel/glib2 \
		security/libgcrypt

# unable to autolaunch a dbus-daemon without a $DISPLAY for X11
TEST_IS_INTERACTIVE=	X11
TEST_DEPENDS=	devel/py-gobject3 \
		x11/dbus-python

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libsecret/tests/Makefile.in \
		${WRKSRC}/libsecret/tests/mock-service.c

# these files call "python", libsecret/tests/{Makefile.in,mock-service.c}
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
