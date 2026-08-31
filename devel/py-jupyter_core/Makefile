COMMENT =		Jupyter core package

MODPY_DISTV =		5.9.1
DISTNAME =		jupyter_core-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-traitlets \
			sysutils/py-platformdirs

TEST_DEPENDS =		devel/pre-commit \
			devel/py-ipykernel \
			devel/py-test-cov \
			devel/py-test-timeout

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
