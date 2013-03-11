# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:33 espie Exp $

COMMENT=	interactive process killer

DISTNAME=	zap-1.3
REVISION=	0
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
