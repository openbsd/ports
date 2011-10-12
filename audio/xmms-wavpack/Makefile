# $OpenBSD: Makefile,v 1.9 2011/10/12 12:54:31 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing WavPack files

DISTNAME=	xmms-wavpack-1.0.3
REVISION=	2
CATEGORIES=	audio
HOMEPAGE=	http://www.wavpack.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi gdk glib gmodule gtk
WANTLIB += m stdc++ xcb wavpack xmms

MODULES +=	devel/gettext

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	audio/wavpack \
		audio/xmms,-main

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
