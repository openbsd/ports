# $OpenBSD: Makefile,v 1.25 2010/11/16 11:23:29 espie Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	1
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	ICE SM X11 c m pthread-stubs stdc++ xcb

MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
