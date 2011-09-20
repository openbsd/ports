# $OpenBSD: Makefile,v 1.6 2011/09/20 22:54:25 jasper Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.0.2
REVISION=	1

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	x11/gnome \
		lang/python

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject
RUN_DEPENDS=	devel/py-gobject \
		x11/gnome/at-spi2-core

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
