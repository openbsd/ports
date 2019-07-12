# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:54 sthen Exp $

COMMENT =	Python Sorted Container Types

MODPY_EGG_VERSION =	2.1.0
DISTNAME =	sortedcontainers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	http://www.grantjenks.com/docs/sortedcontainers/

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS = Yes

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
