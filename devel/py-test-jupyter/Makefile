COMMENT =		pytest plugin for Jupyter libraries and extensions

MODPY_DISTV =	0.6.0
DISTNAME =		pytest_jupyter-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/pytest_/py-test-/}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-nbformat>=5.3 \
			devel/py-ipykernel>=6.14 \
			devel/py-jupyter_client>=7.4.0 \
			devel/py-jupyter_core \
			devel/py-jupyter_server>=1.21

TEST_DEPENDS =		devel/py-test-timeout

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
