# $OpenBSD: Makefile,v 1.10 2020/07/03 17:05:22 sthen Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	1.5.0
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR}

TEST_ENV =	PYTHONPATH=".:tests:tests/cloudpickle_testpkg"

.include <bsd.port.mk>
