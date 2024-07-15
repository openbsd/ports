COMMENT =		hatch plugin for building Jupyter packages

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		hatch_jupyter_builder-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
