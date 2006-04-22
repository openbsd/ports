# $OpenBSD: Makefile,v 1.1.1.1 2006/04/22 23:44:40 alek Exp $

COMMENT=	"small EWMH compliant pager"

DISTNAME=	netwmpager-1.9
CATEGORIES=	x11

HOMEPAGE=	http://onion.dynserv.net/~timo/netwmpager.html

MAINTAINER=	Pierre-Yves Ritschard <pierre-yves@spootnik.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xrender c m fontconfig freetype 

MASTER_SITES=	http://onion.dynserv.net/~timo/files/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

CONFIGURE_STYLE=simple

USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
