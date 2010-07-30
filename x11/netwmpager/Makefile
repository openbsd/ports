# $OpenBSD: Makefile,v 1.9 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=	small EWMH compliant pager

DISTNAME=	netwmpager-1.11
REVISION=	2
CATEGORIES=	x11

HOMEPAGE=	http://onion.dynserv.net/~timo/netwmpager.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xft Xrender expat z c m \
			fontconfig freetype pthread-stubs xcb

MASTER_SITES=	http://onion.dynserv.net/~timo/files/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=simple

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
