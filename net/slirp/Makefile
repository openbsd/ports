# $OpenBSD: Makefile,v 1.16 2002/10/28 01:38:46 naddy Exp $

COMMENT=	"SLIP/CSLIP emulator for users with shell accounts"

DISTNAME=	slirp-1.0c
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_BACKUP}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${DISTNAME}/src
CONFIGURE_STYLE=	simple

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
