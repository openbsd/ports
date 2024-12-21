COMMENT=	Python interface to Graphviz's Dot#'

MODPY_DISTV=	3.0.2
DISTNAME=	pydot-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics
REVISION=	0

HOMEPAGE=	https://github.com/erocarrera/pydot

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

TEST_DEPENDS=	devel/py-parameterized \
		devel/py-test-cov \
		devel/py-test-xdist \
		textproc/py-chardet

.include <bsd.port.mk>
