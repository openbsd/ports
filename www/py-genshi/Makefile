# $OpenBSD: Makefile,v 1.26 2022/02/28 14:57:06 sthen Exp $

COMMENT=	toolkit for generation of output for the web

MODPY_EGG_VERSION= 0.7.6
DISTNAME=	Genshi-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}

CATEGORIES=	www

HOMEPAGE=	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += pthread

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PYTEST_ARGS=	genshi/

FLAVOR=		python3
FLAVORS=	python3

CONFIGURE_ENV=	GENSHI_BUILD_SPEEDUP=1

post-install:
	cp -r ${WRKSRC}/doc ${PREFIX}/share/doc/py-genshi
	cp -r ${WRKSRC}/examples ${PREFIX}/share/examples/py-genshi

.include <bsd.port.mk>
