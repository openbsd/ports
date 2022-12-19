COMMENT =	virtualenv-based automation of test activities

MODPY_EGG_VERSION =	3.25.1
DISTNAME =	tox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYTEST =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	devel/py-py${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR} \
		textproc/py-toml${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-flaky${MODPY_FLAVOR} \
		devel/py-freezegun${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

# some tests need HOME to be writable
PORTHOME =	/tmp

.include <bsd.port.mk>
