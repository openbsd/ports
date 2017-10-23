# $OpenBSD: Makefile,v 1.33 2017/10/23 17:10:50 sthen Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	5
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	ICE SM X11 c m ${COMPILER_LIBCXX} xcb

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
