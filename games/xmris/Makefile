# $OpenBSD: Makefile,v 1.32 2019/07/14 00:39:37 naddy Exp $

COMMENT=	Mr Do video arcade game for X11

V=		4.04
DISTNAME=	xmris.${V}
PKGNAME=	xmris-${V}
REVISION=	4
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m xcb

USE_GMAKE=	Yes
CONFIGURE_STYLE=imake
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults \
	OWNER='-o bin' \
	INSTSCOREFLAGS='-o bin -m 777' \
	INSTMRISFLAGS= '-o bin -m 711' \
	CDEBUGFLAGS='${CFLAGS}' MANSUFFIX=6 \
	LOCAL=${PREFIX}

# Must override target, as `all' is a file
ALL_TARGET=	xmris xmred xmris._man xmred._man

NO_TEST=	Yes

.include <bsd.port.mk>
