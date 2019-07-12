# $OpenBSD: Makefile,v 1.21 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; displays scrolling text

DISTNAME=		wminfo-1.51
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c

MAKE_FLAGS=		CC="${CC}"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
