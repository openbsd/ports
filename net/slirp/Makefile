# $OpenBSD: Makefile,v 1.13 2001/10/28 13:05:48 espie Exp $
#

COMMENT=	"SLIP/CSLIP emulator for users with shell accounts"

DISTNAME=	slirp-1.0c
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://blitzen.canberra.edu.au/pub/slirp/ \
		ftp://freedom.wit.com/misc4/danjo/SLiRP/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/slirp-1.0c/src
CONFIGURE_STYLE=	simple

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
