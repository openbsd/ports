COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 3.0.2
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	https://github.com/erocarrera/pydot

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-parsing${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-parsing${MODPY_FLAVOR} \
		math/graphviz

TEST_DEPENDS=	devel/py-parameterized${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR}

.include <bsd.port.mk>
