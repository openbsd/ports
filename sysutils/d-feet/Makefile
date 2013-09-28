# $OpenBSD: Makefile,v 1.29 2013/09/28 08:50:38 ajacoutot Exp $

COMMENT=		dbus debugger

GNOME_VERSION=		0.3.7
GNOME_PROJECT=		d-feet
MODPY_EGG_VERSION=	${GNOME_VERSION}
REVISION=		0

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		gi yelp

BUILD_DEPENDS=		x11/gtk+3

# needed for tests
BUILD_DEPENDS +=	devel/pep8

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+3

MODPY_ADJ_FILES=	src/d-feet.in \
			src/tests/tests.py

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
