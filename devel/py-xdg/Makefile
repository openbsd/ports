# $OpenBSD: Makefile,v 1.20 2014/06/03 11:34:24 rpointel Exp $

COMMENT=	python library to access freedesktop.org standards

MODPY_EGG_VERSION= 0.25
DISTNAME=	pyxdg-${MODPY_EGG_VERSION}
PKGNAME=	py-xdg-${MODPY_EGG_VERSION}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://people.freedesktop.org/~takluyver/

FLAVORS =	python3
FLAVOR?=

MODULES=	lang/python

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
