# $OpenBSD: Makefile,v 1.2 2000/12/28 15:44:01 reinhard Exp $

DISTNAME=	ttyrec-1.0.2
CATEGORIES=	misc
NEED_VERSION=	1.340
MASTER_SITES=	http://namazu.org/~satoru/ttyrec/

HOMEPAGE=	http://namazu.org/~satoru/ttyrec/index.html.en

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ttyrec ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ttyplay ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyrec
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/ttyrec

.include <bsd.port.mk>
