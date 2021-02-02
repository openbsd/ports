# $OpenBSD: Makefile,v 1.24 2021/02/02 22:05:42 cwen Exp $

COMMENT=		wm-dockapp; calendar/clock

DISTNAME=		wmCalClock-1.25
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmcalclock

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		https://www.dockapps.net/download/

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
