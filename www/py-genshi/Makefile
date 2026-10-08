COMMENT=	toolkit for generation of output for the web

MODPY_DISTV=	0.7.11
DISTNAME=	genshi-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

CONFIGURE_ENV=	GENSHI_BUILD_SPEEDUP=1

.include <bsd.port.mk>
