# $OpenBSD: Makefile,v 1.15 2019/06/21 06:24:44 sebastia Exp $

COMMENT=	HTTP library for Python

MODPY_EGG_VERSION=1.24.3
DISTNAME=	urllib3-${MODPY_EGG_VERSION}
PKGNAME=	py-urllib3-${MODPY_EGG_VERSION}

CATEGORIES=	www


MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} test

.include <bsd.port.mk>
