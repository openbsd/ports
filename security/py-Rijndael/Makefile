# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:34 sthen Exp $

COMMENT =	Python implementation of the Rijndael encryption algorithm

MODPY_EGG_VERSION =	1.4
DISTNAME =		pyrijndael-v${MODPY_EGG_VERSION:S/./_/}
PKGNAME =		py-Rijndael-${MODPY_EGG_VERSION}
REVISION=		2
CATEGORIES =		security devel

HOMEPAGE =		http://jclement.ca/software/pyrijndael/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python

WRKSRC =	${WRKDIR}/pyrijndael

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${WRKINST}${MODPY_SITEPKG} 

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ./pyRijndael.py

.include <bsd.port.mk>
