# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:39 sthen Exp $

COMMENT=		wm-dockapp; multiple pop3 mailbox checker

DISTNAME=		wmMultiPop3-0.9
PKGNAME=		${DISTNAME:L}
REVISION =		2
CATEGORIES=		mail x11/windowmaker
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wmmultipop3/}

HOMEPAGE=		http://wmmultipop3.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c xcb

NO_TEST=	Yes

WRKSRC=		${WRKDIST}/wmmultipop3
CFLAGS +=	-fgnu89-inline

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmmultipop3 ${PREFIX}/bin

.include <bsd.port.mk>
