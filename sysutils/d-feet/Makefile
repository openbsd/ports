# $OpenBSD: Makefile,v 1.23 2013/05/22 19:14:05 ajacoutot Exp $

COMMENT=		dbus debugger

GNOME_VERSION=		0.3.4
GNOME_PROJECT=		d-feet
MODPY_EGG_VERSION=	${GNOME_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://live.gnome.org/DFeet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		yelp

# needed for tests
BUILD_DEPENDS=		devel/pep8

TEST_IS_INTERACTIVE=	x11

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	src/d-feet.in \
			src/tests/tests.py

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
