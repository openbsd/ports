# $OpenBSD: Makefile,v 1.22 2021/03/15 11:35:05 sthen Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.7.5
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--with-speedups

TEST_DEPENDS =	${BUILD_DEPENDS}

post-install:
	#	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-genshi
	cp -r ${WRKSRC}/doc ${PREFIX}/share/doc/py-genshi
	cp -r ${WRKSRC}/examples ${PREFIX}/share/examples/py-genshi

.include <bsd.port.mk>
