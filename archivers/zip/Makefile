# $OpenBSD: Makefile,v 1.11 2000/02/11 00:37:16 espie Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip22
PKGNAME=	zip-2.2
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	generic
MAKEFILE=	unix/Makefile

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/zip
	@cd ${WRKSRC} && \
	 ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
