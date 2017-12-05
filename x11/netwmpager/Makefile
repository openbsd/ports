# $OpenBSD: Makefile,v 1.13 2017/12/05 19:24:14 jca Exp $

COMMENT=	small EWMH compliant pager

DISTNAME=	netwmpager-1.11
REVISION=	3
CATEGORIES=	x11

HOMEPAGE=	http://onion.dynserv.net/~timo/netwmpager.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xft Xrender expat z c m \
			fontconfig freetype xcb

MASTER_SITES=	http://onion.dynserv.net/~timo/files/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=simple

USE_GMAKE=	Yes
MAKE_FLAGS=	V=2

NO_TEST=	Yes

.include <bsd.port.mk>
