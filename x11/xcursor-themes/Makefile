#	$OpenBSD: Makefile,v 1.8 2010/07/30 06:59:01 ajacoutot Exp $

COMMENT=	X11 Cursors themes
DISTNAME=	xcursor-themes-1.0.2
REVISION=	0
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

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LOCALBASE="${LOCALBASE}"
CONFIGURE_ARGS=		--with-cursordir=${LOCALBASE}/lib/X11/icons

NO_REGRESS=		Yes

.include <bsd.port.mk>
