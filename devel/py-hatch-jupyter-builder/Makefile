COMMENT =		hatch plugin for building Jupyter packages

MODPY_DISTV =	0.9.1
DISTNAME =		hatch_jupyter_builder-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-mock

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
