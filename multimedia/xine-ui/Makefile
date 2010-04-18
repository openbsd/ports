# $OpenBSD: Makefile,v 1.14 2010/04/18 20:59:39 sthen Exp $

COMMENT=	multimedia player

DISTNAME=	xine-ui-0.99.6
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xinehq.de/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xext Xft Xinerama Xrender Xtst Xv Xxf86vm c \
		expat fontconfig freetype m ncurses pthread pthread-stubs \
		readline xcb z

MODULES=	devel/gettext
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	xine.>=14::multimedia/xine-lib \
		curl.>=2::net/curl \
		png.>=4::graphics/png

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.64
CONFIGURE_ARGS+=--disable-lirc \
		--disable-mbs \
		--disable-vdr-keys \
		--without-aalib \
		--without-caca

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
