# $OpenBSD: Makefile,v 1.13 2015/11/26 21:50:54 jasper Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.7
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MASTER_SITES =	http://ftp.edgewall.com/pub/genshi/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--with-speedups

TEST_DEPENDS =	${BUILD_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-genshi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-genshi
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-genshi
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/py-genshi

do-test:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} ${MODPY_BIN} \
	    ${WRKSRC}/genshi/tests/__init__.py

.include <bsd.port.mk>
