COMMENT =		tools to inspect type annotations at runtime

MODPY_DISTV =		0.4.0
DISTNAME =		typing_inspection-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

# https://github.com/pydantic/typing-inspection
HOMEPAGE =		https://typing-inspection.pydantic.dev

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

RUN_DEPENDS =		devel/py-typing-extensions

# no tests in pypi distfile
NO_TEST =		Yes

.include <bsd.port.mk>
