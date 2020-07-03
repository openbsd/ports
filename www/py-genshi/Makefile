# $OpenBSD: Makefile,v 1.19 2020/07/03 21:13:19 sthen Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.7.2
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--with-speedups

FLAVOR ?=
FLAVORS =	python3

TEST_DEPENDS =	${BUILD_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}genshi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}genshi
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}genshi
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/${MODPY_PY_PREFIX}genshi

.include <bsd.port.mk>
