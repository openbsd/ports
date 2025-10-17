COMMENT=	finite-state machines in Python

MODPY_DISTV=	25.4.16
DISTNAME=	automat-${MODPY_DISTV}
PKGNAME=	py-automat-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs
MODPY_PYTEST_ARGS=	src/automat/_test/

RUN_DEPENDS=	devel/py-attrs \
		devel/py-six

TEST_DEPENDS=	devel/py-twisted \
		devel/py-test-benchmark \
		math/graphviz

.include <bsd.port.mk>
