# $OpenBSD: Makefile,v 1.9 2009/11/20 08:45:21 ajacoutot Exp $

COMMENT=	python library to access freedesktop.org standards

MODPY_EGG_VERSION= 0.18
DISTNAME=	pyxdg-${MODPY_EGG_VERSION}
PKGNAME=	py-xdg-${MODPY_EGG_VERSION}p0

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.freedesktop.org/~lanius/

MODULES=	lang/python

# regression tests are present, but don't make much sense
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
