# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:27 espie Exp $

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

MASTER_SITES=	${MASTER_SITE_PYPI:=z/zope.testing/}

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
