# $OpenBSD: Makefile,v 1.4 2009/03/25 13:52:31 jasper Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.5.1
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}p1

CATEGORIES =   	www

HOMEPAGE =	http://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	ftp://ftp.edgewall.com/pub/genshi/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS =	${BUILD_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-genshi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-genshi
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-genshi
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/py-genshi

do-regress:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} ${MODPY_BIN} \
	    ${WRKSRC}/genshi/tests/__init__.py

.include <bsd.port.mk>
