# $OpenBSD: Makefile,v 1.15 2009/03/23 10:10:35 giovanni Exp $

COMMENT =	Python implementation of the Rijndael encryption algorithm

MODPY_EGG_VERSION =	1.4
DISTNAME =		pyrijndael-v${MODPY_EGG_VERSION:S/./_/}
PKGNAME =		py-Rijndael-${MODPY_EGG_VERSION}
CATEGORIES =		security devel

HOMEPAGE =		http://jclement.ca/software/pyrijndael/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python

WRKSRC =	${WRKDIR}/pyrijndael

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${WRKINST}${MODPY_SITEPKG} 

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./pyRijndael.py

.include <bsd.port.mk>
