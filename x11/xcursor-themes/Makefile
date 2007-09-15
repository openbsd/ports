#	$OpenBSD: Makefile,v 1.5 2007/09/15 08:18:49 matthieu Exp $

COMMENT=	X11 Cursors themes
VERSION=	1.0.1
DISTNAME=	xcursor-themes-X11R7.0-${VERSION}
PKGNAME=	xcursor-themes-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://wiki.X.Org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

BUILD_DEPENDS=	:xcursorgen->=7:x11/xcursorgen

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/pub/individual/data/ \
		ftp://x.mirrors.skynet.be/pub/ftp.x.org/pub/individual/data/

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LOCALBASE="${LOCALBASE}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
