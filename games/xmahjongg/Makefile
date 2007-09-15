# $OpenBSD: Makefile,v 1.19 2007/09/15 18:01:03 simon Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 c m stdc++

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
