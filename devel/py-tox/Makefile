COMMENT =	virtualenv-based automation of test activities

MODPY_EGG_VERSION =	4.0.19
DISTNAME =	tox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYTEST =	Yes
MODPY_PYBUILD =	hatch-vcs

RUN_DEPENDS =	devel/py-cachetools${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR} \
		devel/py-colorama${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-pyproject-api${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR} \
		textproc/py-toml${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}
# additional deps needed, at least devpi-process seems fairly necessary
# (which needs a couple of other ports). also asks for covdefault,
# diff-cover, re-assert, time-machine but some/all of those are likely
# optional.
NO_TEST =	Yes
#MODPY_PYTEST_ARGS = tests
#TEST_DEPENDS =	sysutils/py-distlib${MODPY_FLAVOR} \
#		devel/py-flaky${MODPY_FLAVOR} \
#		sysutils/py-psutil${MODPY_FLAVOR} \
#		devel/py-test-cov${MODPY_FLAVOR} \
#		devel/py-test-mock${MODPY_FLAVOR} \
#		devel/py-test-xdist${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

# some tests need HOME to be writable
PORTHOME =	/tmp

.include <bsd.port.mk>
