# $OpenBSD: Makefile,v 1.28 2013/03/11 11:07:42 espie Exp $

COMMENT=	Mr Do video arcade game for X11

V=		4.04
DISTNAME=	xmris.${V}
PKGNAME=	xmris-${V}
REVISION=	1
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m pthread-stubs xcb

USE_GMAKE=	Yes
CONFIGURE_STYLE=imake
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults \
	OWNER='-o bin' \
	INSTSCOREFLAGS='-o bin -m 777' \
	INSTMRISFLAGS= '-o bin -m 711' \
	CDEBUGFLAGS='${CFLAGS}' MANSUFFIX=6 \
	LOCAL=${PREFIX}

# Must override target, as `all' is a file
ALL_TARGET=	xmris xmred xmris.0 xmred.0

NO_TEST=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
