# $OpenBSD: Makefile,v 1.25 2022/01/16 19:37:01 kmos Exp $

COMMENT=	toolkit for generation of output for the web

MODPY_EGG_VERSION= 0.7.5
DISTNAME=	Genshi-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += pthread

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

FLAVOR=		python3
FLAVORS=	python3

MODPY_PI=	Yes
CONFIGURE_ENV=	GENSHI_BUILD_SPEEDUP=1

TEST_DEPENDS=	${BUILD_DEPENDS}

post-install:
	cp -r ${WRKSRC}/doc ${PREFIX}/share/doc/py-genshi
	cp -r ${WRKSRC}/examples ${PREFIX}/share/examples/py-genshi

.include <bsd.port.mk>
