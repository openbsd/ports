# $OpenBSD: Makefile,v 1.17 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; displays scrolling text

DISTNAME=		wminfo-1.51
REVISION=		1
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
