# $OpenBSD: Makefile,v 1.10 1999/12/24 23:33:30 brad Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	bsd
MAKEFILE=	unix/Makefile

WRKSRC=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/unzip
	@cd ${WRKSRC} && \
	 ${INSTALL_DATA} README COPYING WHERE ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
