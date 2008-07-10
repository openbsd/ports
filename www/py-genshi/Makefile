# $OpenBSD: Makefile,v 1.1.1.1 2008/07/10 23:37:21 fgsch Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.5
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

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

BUILD_DEPENDS =		\
	:python-expat-${MODPY_VERSION}.*:lang/python/${MODPY_VERSION},-expat
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
