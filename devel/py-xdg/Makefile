# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:27 espie Exp $

COMMENT=	python library to access freedesktop.org standards

MODPY_EGG_VERSION= 0.23
DISTNAME=	pyxdg-${MODPY_EGG_VERSION}
PKGNAME=	py-xdg-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://people.freedesktop.org/~takluyver/

MODULES=	lang/python

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
