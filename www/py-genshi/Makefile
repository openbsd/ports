COMMENT=	toolkit for generation of output for the web

MODPY_DISTV=	0.7.9
DISTNAME=	Genshi-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

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
MODPY_PYTEST_ARGS=	genshi/

CONFIGURE_ENV=	GENSHI_BUILD_SPEEDUP=1

post-install:
	cp -r ${WRKSRC}/doc ${PREFIX}/share/doc/py-genshi
	cp -r ${WRKSRC}/examples ${PREFIX}/share/examples/py-genshi

.include <bsd.port.mk>
