COMMENT =		shim layer for notebook traits and config

MODPY_DISTV =		0.2.4
DISTNAME =		notebook_shim-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-jupyter_server>=1.8,<3

TEST_DEPENDS =		devel/py-test-console-scripts \
			devel/py-test-jupyter \
			devel/py-test-tornasync

.include <bsd.port.mk>
