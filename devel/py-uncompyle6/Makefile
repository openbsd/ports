COMMENT =		Python cross-version byte-code deparser

MODPY_EGG_VERSION =	3.9.0.20230903
GH_ACCOUNT =		rocky
GH_PROJECT =		python-uncompyle6
GH_COMMIT =		34ef91312ed6d365ff9018ee0af3e3c8f3076951
DISTNAME =		uncompyle6-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-uncompyle6/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-spark-parser${MODPY_FLAVOR} \
			devel/py-xdis${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR}

# XXX: pypi releases are too stale; use github head so this
# XXX: doesn't break with each new Python point release.
#MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	pytest

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
