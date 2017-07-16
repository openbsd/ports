# $OpenBSD: Makefile,v 1.21 2017/07/16 19:18:55 espie Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	2
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xpm c m pthread-stubs sndio ${COMPILER_LIBCXX} xcb

NO_TEST=	Yes

.include <bsd.port.mk>
