# $OpenBSD: Makefile,v 1.28 2013/03/21 08:45:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing FLAC files

VERSION=	1.2.1
PKGNAME=	xmms-flac-${VERSION}
REVISION=	3
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

WANTLIB=	X11 Xext Xi gdk glib gmodule gtk m ogg \
		xcb xmms>=4 FLAC>=9
LIB_DEPENDS=	audio/xmms \
		audio/flac

MODULES +=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}" \
		--with-xmms-prefix="${LOCALBASE}"
LIBTOOL_FLAGS=	--tag=disable-static
MAKE_ENV=	MAKEOBJDIR=/nonexistent		# ignore ${WRKSRC}/obj
MAKE_FILE=	${FILESDIR}/Makefile

NO_TEST=	Yes

.include <bsd.port.mk>
