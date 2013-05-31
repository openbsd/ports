# $OpenBSD: Makefile,v 1.29 2013/05/31 14:34:29 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing FLAC files

VERSION=	1.3.0
PKGNAME=	xmms-flac-${VERSION}
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	https://www.xiph.org/flac/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/flac/
EXTRACT_SUFX=   .tar.xz

WANTLIB=	FLAC X11 Xext Xi gdk glib gmodule gtk m ogg \
		xcb xmms

MODULES=	devel/gettext
LIB_DEPENDS=	audio/xmms \
		audio/flac

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static
MAKE_FILE=	${FILESDIR}/Makefile

NO_TEST=	Yes

.include <bsd.port.mk>
