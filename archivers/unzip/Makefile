# $OpenBSD: Makefile,v 1.11 2000/02/05 17:49:01 brad Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	bsd
MAKEFILE=	unix/Makefile

WRKSRC=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	@cd ${WRKSRC};  ${INSTALL_DATA} README COPYING WHERE \
		${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
