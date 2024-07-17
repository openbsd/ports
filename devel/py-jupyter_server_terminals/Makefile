COMMENT =		Jupyter server extension providing terminals

MODPY_EGG_VERSION =	0.5.3
DISTNAME =		jupyter_server_terminals-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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

RUN_DEPENDS =		www/py-terminado${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-jupyter${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR}

.include <bsd.port.mk>
