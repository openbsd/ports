# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:56 sthen Exp $

COMMENT=	testing frameworks from Zope 3

MODPY_EGG_VERSION=	3.7.4

DISTNAME=	zope.testing-${MODPY_EGG_VERSION}
PKGNAME=	py-zopetesting-${MODPY_EGG_VERSION}
REVISION =	5
CATEGORIES=	devel

# Zope Public License
PERMIT_PACKAGE=	Yes

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
