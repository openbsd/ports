COMMENT =		pygments theme using jupyterlab CSS variables

MODPY_DISTV =		0.3.0
DISTNAME =		jupyterlab_pygments-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-nodejs-version

RUN_DEPENDS =		textproc/py-pygments

.include <bsd.port.mk>
