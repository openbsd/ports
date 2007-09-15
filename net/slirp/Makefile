# $OpenBSD: Makefile,v 1.19 2007/09/15 22:36:59 merdely Exp $

COMMENT=	SLIP/CSLIP emulator for users with shell accounts

V=		1.0c
DISTNAME=	slirp-${V}
PKGNAME=	slirp-${V}p1
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

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
