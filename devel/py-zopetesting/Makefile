# $OpenBSD: Makefile,v 1.8 2015/04/02 14:21:16 jasper Exp $

COMMENT=	testing frameworks from Zope 3

MODPY_EGG_VERSION=	3.7.4

DISTNAME=	zope.testing-${MODPY_EGG_VERSION}
PKGNAME=	py-zopetesting-${MODPY_EGG_VERSION}
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.testing

MAINTAINER=	Eric Faurot <eric@openbsd.org>

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
