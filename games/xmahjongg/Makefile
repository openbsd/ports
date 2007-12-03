# $OpenBSD: Makefile,v 1.20 2007/12/03 18:57:01 fgsch Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	ICE SM X11 c m stdc++

MASTER_SITES=	${HOMEPAGE}

USE_X11=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
