# $OpenBSD: Makefile,v 1.8 2004/12/30 19:04:22 alek Exp $

COMMENT=		"wm-dockapp; multiple pop3 mailbox checker"

DISTNAME=		wmMultiPop3-0.9
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wmmultipop3/}

HOMEPAGE=		http://wmmultipop3.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

NO_REGRESS=	Yes
USE_X11=	Yes

WRKSRC=		${WRKDIST}/wmmultipop3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmmultipop3 ${PREFIX}/bin

.include <bsd.port.mk>
