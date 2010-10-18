# $OpenBSD: Makefile,v 1.22 2010/10/18 18:36:58 espie Exp $

COMMENT=	SLIP/CSLIP emulator for users with shell accounts

V=		1.0c
DISTNAME=	slirp-${V}
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_BACKUP}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

WRKDIST=		${WRKDIR}/${DISTNAME}/src
CONFIGURE_STYLE=	simple

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
