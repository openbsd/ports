COMMENT=	finite-state machines in Python

MODPY_DISTV=	24.8.1
REVISION=	0

DISTNAME=	automat-${MODPY_DISTV}
PKGNAME=	py-automat-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS=	src/automat/_test/

RUN_DEPENDS=	devel/py-attrs \
		devel/py-six

TEST_DEPENDS=	devel/py-twisted \
		devel/py-test-benchmark \
		math/graphviz

.include <bsd.port.mk>
