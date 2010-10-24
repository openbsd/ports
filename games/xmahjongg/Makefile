# $OpenBSD: Makefile,v 1.24 2010/10/24 21:19:03 ajacoutot Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
PKGNAME=	${DISTNAME}p1
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
