# $OpenBSD: Makefile,v 1.31 2017/07/23 09:26:27 espie Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	3
CATEGORIES=	games x11

HOMEPAGE=	http://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	ICE SM X11 c m pthread-stubs ${COMPILER_LIBCXX} xcb

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
