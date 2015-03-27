# $OpenBSD: Makefile,v 1.40 2015/03/27 08:14:14 ajacoutot Exp $

COMMENT=		dbus debugger

GNOME_VERSION=		0.3.9
GNOME_PROJECT=		d-feet
MODPY_EGG_VERSION=	${GNOME_VERSION}
REVISION=		0

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += yelp

BUILD_DEPENDS=		x11/gtk+3

# needed for tests
BUILD_DEPENDS +=	devel/pep8

RUN_DEPENDS=		devel/py-gobject3

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# src/dfeet/wnck_utils.py
RUN_DEPENDS +=		devel/libwnck3

MODPY_ADJ_FILES=	src/d-feet.in \
			src/tests/tests.py

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
