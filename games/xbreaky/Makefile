# $OpenBSD: Makefile,v 1.26 2019/07/12 21:02:21 sthen Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	6
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xpm c m sndio ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

.include <bsd.port.mk>
