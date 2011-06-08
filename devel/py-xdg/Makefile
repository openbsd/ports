# $OpenBSD: Makefile,v 1.11 2011/06/08 17:39:26 jasper Exp $

COMMENT=	python library to access freedesktop.org standards

MODPY_EGG_VERSION= 0.18
DISTNAME=	pyxdg-${MODPY_EGG_VERSION}
PKGNAME=	py-xdg-${MODPY_EGG_VERSION}
REVISION =	2

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
