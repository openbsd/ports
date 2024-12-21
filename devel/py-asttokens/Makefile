COMMENT =	annotate Python ASTs with source text and token information

MODPY_DISTV =	2.4.1

DISTNAME =	asttokens-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/gristlabs/asttokens

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-six
TEST_DEPENDS =		devel/py-astroid

.include <bsd.port.mk>
