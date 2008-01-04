# $OpenBSD: Makefile,v 1.23 2008/01/04 17:48:35 espie Exp $

COMMENT=	Mr Do video arcade game for X11

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04p0
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m

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

NO_REGRESS=	Yes
USE_X11=	Yes

.include <bsd.port.mk>
