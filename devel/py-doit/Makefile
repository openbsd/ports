COMMENT =		automation tool

MODPY_DISTV =	0.36.0
REVISION =		2
DISTNAME =		doit-${MODPY_DISTV}
CATEGORIES =		devel

HOMEPAGE =		https://pydoit.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
# some tests fail as they need py-doitpy (not ported)
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-cloudpickle

.include <bsd.port.mk>
