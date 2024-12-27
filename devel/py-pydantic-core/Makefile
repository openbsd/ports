COMMENT =		data validation using Python type hints

MODPY_DISTV =		2.27.0
REVISION =		2
DISTNAME =		pydantic_core-${MODPY_DISTV}
PKGNAME =		py-pydantic-core-${MODPY_DISTV}

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin
# needs inline_snapshot
MODPY_PYTEST_ARGS =	--ignore tests/validators/test_allow_partial.py

WANTLIB +=		${MODCARGO_WANTLIB}
MAKE_ENV +=		${MODCARGO_ENV}

BUILD_DEPENDS =		devel/py-typing-extensions
RUN_DEPENDS =		devel/py-typing-extensions
TEST_DEPENDS =		devel/py-test-mock \
			devel/py-test-benchmark \
			devel/py-dirty-equals \
			devel/py-hypothesis \
			devel/py-coverage \
			devel/py-test-timeout \
			math/py-pandas
PORTHOME =		${WRKDIR}

.include "crates.inc"
.include <bsd.port.mk>
