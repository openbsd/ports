COMMENT=	streamlined Cython bindings for the HarfBuzz shaping engine

MODPY_DISTV=	0.53.3
DISTNAME=	uharfbuzz-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/trufont/uharfbuzz

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} harfbuzz harfbuzz-subset m

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

MAKE_ENV=	USE_SYSTEM_LIBS=1
BUILD_DEPENDS=	lang/cython \
		devel/py-pkgconfig
LIB_DEPENDS=	devel/harfbuzz

TEST_DEPENDS=	devel/py-coverage

.include <bsd.port.mk>
