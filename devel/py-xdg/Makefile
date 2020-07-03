# $OpenBSD: Makefile,v 1.25 2020/07/03 21:12:52 sthen Exp $

COMMENT=		python library to access freedesktop.org standards

MODPY_EGG_VERSION=	0.26
DISTNAME=		pyxdg-${MODPY_EGG_VERSION}
PKGNAME=		py-xdg-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

FLAVORS =		python3
FLAVOR?=

MODULES=		lang/python

MODPY_PI=		Yes

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
