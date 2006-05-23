#	$OpenBSD: Makefile,v 1.3 2006/05/23 22:25:53 alek Exp $

COMMENT=	"X11 Cursors themes"
VERSION=	1.0.1
DISTNAME=	xcursor-themes-X11R7.0-${VERSION}
PKGNAME=	xcursor-themes-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://wiki.X.Org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

BUILD_DEPENDS=	:xcursorgen->=7:x11/xcursorgen \
		:pkgconfig-*:devel/pkgconfig

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/pub/X11R7.0/src/data/ \
		ftp://x.mirrors.skynet.be/pub/x.org/pub/X11R7.0/src/data/

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LOCALBASE="${LOCALBASE}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
