# $OpenBSD: Makefile,v 1.24 2017/10/23 17:10:50 sthen Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	5
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xpm c m sndio ${COMPILER_LIBCXX} xcb

NO_TEST=	Yes

.include <bsd.port.mk>
