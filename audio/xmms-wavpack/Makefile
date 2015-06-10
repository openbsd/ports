# $OpenBSD: Makefile,v 1.12 2015/06/10 21:53:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing WavPack files

DISTNAME=	xmms-wavpack-1.0.3
REVISION=	3
CATEGORIES=	audio
HOMEPAGE=	http://www.wavpack.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk
WANTLIB += m pthread pthread-stubs stdc++ xcb wavpack xmms

MODULES +=	devel/gettext

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	audio/wavpack \
		audio/xmms,-main

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
