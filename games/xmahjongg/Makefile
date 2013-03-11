# $OpenBSD: Makefile,v 1.27 2013/03/11 11:07:41 espie Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	2
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	ICE SM X11 c m pthread-stubs stdc++ xcb

MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
