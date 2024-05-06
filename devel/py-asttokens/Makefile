COMMENT =	annotate Python ASTs with source text and token information

MODPY_EGG_VERSION =	2.4.1

DISTNAME =	asttokens-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/gristlabs/asttokens

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-astroid${MODPY_FLAVOR}

.include <bsd.port.mk>
