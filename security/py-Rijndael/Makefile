# $OpenBSD: Makefile,v 1.7 2003/08/29 20:34:54 sturm Exp $

COMMENT=	"python implementation of the Rijndael encryption algorithm"

VERSION=	1.1
DISTNAME=	pyrijndael-snapshot
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
DIST_SUBDIR=	${PKGNAME}

MODULES=	python

WRKSRC=	${WRKDIR}/pyrijndael

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${MODPY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${MODPY_SITEPKG} 

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./pyRijndael.py

.include <bsd.port.mk>
