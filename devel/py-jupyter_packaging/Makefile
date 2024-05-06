COMMENT =		Jupyter packaging utilities

MODPY_EGG_VERSION =	0.12.3
DISTNAME =		jupyter_packaging-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-deprecation${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-tomlkit${MODPY_FLAVOR}

TEST_DEPENDS =		devel/pre-commit \
			devel/py-build${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
