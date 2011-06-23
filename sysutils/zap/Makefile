# $OpenBSD: Makefile,v 1.18 2011/06/23 22:50:29 naddy Exp $

COMMENT=	interactive process killer

DISTNAME=	zap-1.3
REVISION=	0
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
