COMMENT=	character set detector library

MODPY_DISTV=	3.3.2
DISTNAME=	charset-normalizer-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

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

BUILD_DEPENDS=	devel/py-mypy
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
