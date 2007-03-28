# $OpenBSD: Makefile,v 1.15 2007/03/28 14:36:17 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.1.2
PKGNAME=	xmms-flac-${VERSION}p0
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

WANTLIB=	X11 Xext Xi gdk glib gmodule gtk iconv intl m
LIB_DEPENDS=	xmms.>=4::audio/xmms \
		FLAC.>=7::audio/flac

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}" \
		--with-xmms-prefix="${LOCALBASE}"
LIBTOOL_FLAGS=	--tag=disable-static
MAKE_ENV=	MAKEOBJDIR=/nonexistent		# ignore ${WRKSRC}/obj
MAKE_FILE=	${FILESDIR}/Makefile

NO_REGRESS=	Yes

.include <bsd.port.mk>
