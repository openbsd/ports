# $OpenBSD: Makefile,v 1.8 2004/02/04 07:38:59 xsa Exp $

COMMENT=	"python implementation of the Rijndael encryption algorithm"

VERSION=	1.3
DISTNAME=	pyrijndael-${VERSION}-src
PKGNAME=	py-Rijndael-${VERSION}
CATEGORIES=     security devel

HOMEPAGE=	http://jclement.ca/software/pyrijndael/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	python

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${MODPY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${MODPY_SITEPKG} 

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./pyRijndael.py

.include <bsd.port.mk>
