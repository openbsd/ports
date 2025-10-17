COMMENT=	character set detector library

MODPY_DISTV=	3.4.4
DISTNAME=	charset_normalizer-${MODPY_DISTV}
PKGNAME=	py-charset-normalizer-${MODPY_DISTV}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ousret/charset_normalizer

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	devel/py-mypy<=1.18.2 \
		devel/py-setuptools<=81v0

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov

MAKE_ENV=	CHARSET_NORMALIZER_USE_MYPYC=1

.include <bsd.port.mk>
