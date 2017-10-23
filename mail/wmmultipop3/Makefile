# $OpenBSD: Makefile,v 1.15 2017/10/23 17:10:51 sthen Exp $

COMMENT=		wm-dockapp; multiple pop3 mailbox checker

DISTNAME=		wmMultiPop3-0.9
PKGNAME=		${DISTNAME:L}
REVISION =		1
CATEGORIES=		mail x11/windowmaker
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wmmultipop3/}

HOMEPAGE=		http://wmmultipop3.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c xcb

NO_TEST=	Yes

WRKSRC=		${WRKDIST}/wmmultipop3
CFLAGS +=	-fgnu89-inline

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmmultipop3 ${PREFIX}/bin

.include <bsd.port.mk>
