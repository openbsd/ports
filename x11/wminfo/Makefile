# $OpenBSD: Makefile,v 1.19 2017/05/03 18:17:19 jca Exp $

COMMENT=		wm-dockapp; displays scrolling text

DISTNAME=		wminfo-1.51
REVISION=		1
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c

MAKE_FLAGS=		CC="${CC}"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
