COMMENT=	plugin and hook calling mechanisms for Python

MODPY_EGG_VERSION=	1.3.0
DISTNAME=	pluggy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

TEST_DEPENDS=	devel/py-atomicwrites${MODPY_FLAVOR} \
		devel/py-test-benchmark${MODPY_FLAVOR}

.include <bsd.port.mk>
