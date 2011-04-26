# $OpenBSD: Makefile,v 1.1.1.1 2011/04/26 18:31:24 ajacoutot Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.0.1

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		lang/python

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject
RUN_DEPENDS=	devel/py-gobject \
		x11/gnome/at-spi2-core

CONFIGURE_ARGS= ${CONFIGURE_SHARED}

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
