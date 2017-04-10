# $OpenBSD: Makefile,v 1.20 2017/04/10 11:46:19 sthen Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	2
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xpm c m pthread-stubs sndio ${LIBCXX} xcb

NO_TEST=	Yes

.include <bsd.port.mk>
