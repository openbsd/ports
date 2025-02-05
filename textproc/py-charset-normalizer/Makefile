COMMENT=	character set detector library

MODPY_DISTV=	3.4.1
DISTNAME=	charset_normalizer-${MODPY_DISTV}
PKGNAME=	py-charset-normalizer-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ousret/charset_normalizer

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov

MAKE_ENV=	CHARSET_NORMALIZER_USE_MYPYC=1
BUILD_DEPENDS=	devel/py-mypy

.include <bsd.port.mk>
