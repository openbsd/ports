# $OpenBSD: Makefile,v 1.11 2012/09/28 06:26:15 ajacoutot Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.6.0

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		lang/python

MODPY_ADJ_FILES=examples/magFocusTracker.py

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject3>=3.4.0
RUN_DEPENDS=	devel/py-gobject3>=3.4.0 \
		x11/gnome/at-spi2-core>=2.6.0

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
