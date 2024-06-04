COMMENT=	capture c-level output in context managers

MODPY_EGG_VERSION=	3.1.0
DISTNAME=	wurlitzer-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/minrk/wurlitzer

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test.py

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}

.include <bsd.port.mk>
