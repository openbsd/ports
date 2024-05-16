COMMENT=	lightweight, object-oriented state machine for Python

MODPY_EGG_VERSION=	0.9.1
DISTNAME=	transitions-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytransitions/transitions

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-runner${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-dill${MODPY_FLAVOR} \
		math/py-graphviz${MODPY_FLAVOR}

.include <bsd.port.mk>
