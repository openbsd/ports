COMMENT=	parsing toolkit for python

MODPY_EGG_VERSION=	1.1.9
DISTNAME=	lark-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	https://lark-parser.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODPY_PYTEST_ARGS=	--ignore tests/test_nearley

.include <bsd.port.mk>
