# $OpenBSD: Makefile,v 1.20 2009/08/10 06:29:52 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing FLAC files

VERSION=	1.2.1
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

WANTLIB=	X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk iconv intl m ogg \
		pthread-stubs xcb
LIB_DEPENDS=	xmms.>=4::audio/xmms \
		FLAC.>=9::audio/flac

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
