# $OpenBSD: Makefile,v 1.12 2017/10/23 17:11:05 sthen Exp $

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
NO_TEST=	Yes

.include <bsd.port.mk>
