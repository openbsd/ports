COMMENT=	virtualenv-based automation of test activities

MODPY_EGG_VERSION=	4.18.1
DISTNAME=	tox-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes
MODPY_PYBUILD=	hatch-vcs

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cachetools${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR} \
		devel/py-colorama${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-pyproject-api${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR}

# additional deps needed, at least devpi-process seems fairly necessary.
# also asks for covdefaults, detect-test-pollution, diff-cover, re-assert,
# time-machine but some/all of those are likely optional.
NO_TEST=	Yes
#MODPY_PYTEST_ARGS= tests
#TEST_DEPENDS=	devel/py-build${MODPY_FLAVOR} \
#		sysutils/py-distlib${MODPY_FLAVOR} \
#		devel/py-flaky${MODPY_FLAVOR} \
#		devel/py-hatch-vcs${MODPY_FLAVOR} \
#		devel/py-hatchling${MODPY_FLAVOR} \
#		sysutils/py-psutil${MODPY_FLAVOR} \
#		devel/py-test-cov${MODPY_FLAVOR} \
#		devel/py-test-mock${MODPY_FLAVOR} \
#		devel/py-test-xdist${MODPY_FLAVOR} \
#		devel/py-setuptools${MODPY_FLAVOR} \
#		devel/py-wheel${MODPY_FLAVOR} \

# some tests need HOME to be writable
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
