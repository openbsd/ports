# $OpenBSD: Makefile,v 1.4 2021/10/29 15:38:45 sthen Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION = 1.1.0
DISTNAME =	mox3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	2

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-fixtures${MODPY_FLAVOR} \
		devel/py-pbr${MODPY_FLAVOR}

# some tests run, some problems
TEST_DEPENDS =	devel/py-fixtures${MODPY_FLAVOR} \
		devel/py-testtools${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
