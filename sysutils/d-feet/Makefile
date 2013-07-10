# $OpenBSD: Makefile,v 1.27 2013/07/10 09:56:41 ajacoutot Exp $

COMMENT=		dbus debugger

GNOME_VERSION=		0.3.6
GNOME_PROJECT=		d-feet
MODPY_EGG_VERSION=	${GNOME_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		https://wiki.gnome.org/DFeet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gi yelp

BUILD_DEPENDS=		x11/gtk+3

# needed for tests
BUILD_DEPENDS +=	devel/pep8

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+2,-guic \
			x11/gtk+3

MODPY_ADJ_FILES=	src/d-feet.in \
			src/tests/tests.py

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
