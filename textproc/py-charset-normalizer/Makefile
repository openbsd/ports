COMMENT=	character set detector library

MODPY_EGG_VERSION=	3.3.2
DISTNAME=	charset-normalizer-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ousret/charset_normalizer

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MAKE_ENV=	CHARSET_NORMALIZER_USE_MYPYC=1

BUILD_DEPENDS=	devel/py-mypy${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR}

FLAVOR=		python3
FLAVORS=	python3

.include <bsd.port.mk>
