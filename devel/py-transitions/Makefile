COMMENT=	lightweight, object-oriented state machine for Python

MODPY_DISTV =	0.9.2
DISTNAME=	transitions-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://github.com/pytransitions/transitions

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-six
TEST_DEPENDS=	devel/py-codestyle \
		devel/py-test-cov \
		devel/py-test-runner \
		devel/py-test-xdist \
		devel/py-mock \
		devel/py-dill \
		math/py-graphviz

.include <bsd.port.mk>
