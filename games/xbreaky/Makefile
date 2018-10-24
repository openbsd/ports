# $OpenBSD: Makefile,v 1.25 2018/10/24 14:28:04 sthen Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	6
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		X11 Xpm c m sndio ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

.include <bsd.port.mk>
