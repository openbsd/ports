# $OpenBSD: Makefile,v 1.2 2009/08/10 06:29:53 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing WavPack files

DISTNAME=	xmms-wavpack-1.0.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.wavpack.com/

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk iconv \
		intl m pthread-stubs xcb

LIB_DEPENDS=	wavpack.>=0::audio/wavpack \
		xmms.>=4::audio/xmms,-main

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
