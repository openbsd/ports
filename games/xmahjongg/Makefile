# $OpenBSD: Makefile,v 1.34 2018/10/24 14:28:04 sthen Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	6
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	ICE SM X11 c m ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
