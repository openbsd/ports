# $OpenBSD: Makefile,v 1.38 2022/02/26 20:54:37 sthen Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	2.8.2
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://dateutil.readthedocs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
