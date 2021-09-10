# $OpenBSD: Makefile,v 1.36 2021/09/10 16:41:24 tb Exp $

COMMENT=	colorful solitaire Mah Jongg game for X11

DISTNAME=	xmahjongg-3.7
REVISION =	7
CATEGORIES=	games x11

HOMEPAGE=	https://www.lcdf.org/~eddietwo/xmahjongg/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 c m ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
