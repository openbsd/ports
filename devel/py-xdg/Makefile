# $OpenBSD: Makefile,v 1.14 2012/08/04 15:11:00 ajacoutot Exp $

COMMENT=	python library to access freedesktop.org standards

MODPY_EGG_VERSION= 0.23
DISTNAME=	pyxdg-${MODPY_EGG_VERSION}
PKGNAME=	py-xdg-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.freedesktop.org/~takluyver/

MODULES=	lang/python

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
