# $OpenBSD: Makefile,v 1.16 2007/05/25 16:23:51 martynas Exp $

COMMENT=	"flash rendering library"
DISTNAME=	swfdec-0.2.2
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	swfdec	0.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swfdec/}

HOMEPAGE=	http://swfdec.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread usbhid z

MODULES=	devel/gettext
LIB_DEPENDS=	SDL::devel/sdl \
		mad.>=2::audio/libmad \
		art_lgpl_2.>=5::graphics/libart \
		gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.57
CONFIGURE_ARGS+=--disable-pixbuf-loader
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig"

FLAVORS=	plugin
FLAVOR?=

.if ${FLAVOR:L:Mplugin}
WANTLIB+=	ICE SM Xt
BUILD_DEPENDS=	:mozilla-firefox-devel->=2.0:www/mozilla-firefox,-devel
CFLAGS+=	-DMOZ_X11
CONFIGURE_ENV+=	ENABLE_PLUGIN=Yes
.endif

.include <bsd.port.mk>
