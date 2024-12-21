COMMENT =		Jupyter notebook format

MODPY_DISTV =	5.9.2
DISTNAME =		nbformat-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-nodejs-version

RUN_DEPENDS =		devel/py-jsonschema>=2.6 \
			devel/py-jupyter_core \
			devel/py-traitlets>=5.1 \
			textproc/py-fastjsonschema

# XXX: needs pep440
TEST_DEPENDS =		devel/py-testpath \
			devel/pre-commit

.include <bsd.port.mk>
