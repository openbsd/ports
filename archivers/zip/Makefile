# $OpenBSD: Makefile,v 1.10 1999/12/24 08:59:53 brad Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip22
PKGNAME=	zip-2.2
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	generic
MAKEFILE=	unix/Makefile

WRKSRC=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/zip
	@cd ${WRKSRC} && \
	 ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
