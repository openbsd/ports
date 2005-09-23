# $OpenBSD: Makefile,v 1.11 2005/09/23 19:41:44 pvalchev Exp $

COMMENT=	"Python implementation of the Rijndael encryption algorithm"

VERSION=	1.3
DISTNAME=	pyrijndael-${VERSION}-src
PKGNAME=	py-Rijndael-${VERSION}
CATEGORIES=     security devel

HOMEPAGE=	http://jclement.ca/software/pyrijndael/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${WRKINST}${MODPY_SITEPKG} 

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./pyRijndael.py

.include <bsd.port.mk>
