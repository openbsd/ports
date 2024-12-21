COMMENT =		compatibility for pydantic v1-v2 cross compatibility

MODPY_DISTV =	0.1.2
DISTNAME =		pydantic_compat-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

BUILD_DEPENDS =		lang/cython
RUN_DEPENDS =		devel/py-pydantic \
			devel/py-typing-extensions
TEST_DEPENDS =		devel/py-test-mock
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
