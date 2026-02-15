COMMENT =		Jupyter server extension providing terminals

MODPY_DISTV =		0.5.4
DISTNAME =		jupyter_server_terminals-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		www/py-terminado

TEST_DEPENDS =		devel/py-test-jupyter \
			devel/py-test-timeout

.include <bsd.port.mk>
