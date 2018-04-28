# $OpenBSD: Makefile,v 1.12 2018/04/28 21:18:46 danj Exp $

COMMENT=	testing frameworks from Zope 3

MODPY_EGG_VERSION=	3.7.4

DISTNAME=	zope.testing-${MODPY_EGG_VERSION}
PKGNAME=	py-zopetesting-${MODPY_EGG_VERSION}
REVISION =	5
CATEGORIES=	devel

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-zopeinterface
BUILD_DEPENDS=	${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && \
		${MODPY_BIN} bootstrap.py && \
		./bin/buildout && \
		./bin/test

.include <bsd.port.mk>
