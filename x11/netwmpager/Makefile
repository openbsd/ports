# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:17 sthen Exp $

COMMENT=	small EWMH compliant pager

DISTNAME=	netwmpager-1.11
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://onion.dynserv.net/~timo/netwmpager.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xft Xrender expat z c m \
			fontconfig freetype xcb

MASTER_SITES=	http://onion.dynserv.net/~timo/files/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=simple

USE_GMAKE=	Yes
MAKE_FLAGS=	V=2

NO_TEST=	Yes

.include <bsd.port.mk>
