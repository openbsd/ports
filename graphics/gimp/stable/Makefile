# $OpenBSD: Makefile,v 1.50 2009/08/17 12:10:26 giovanni Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME=	gimp-2.6.6
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	gimp-2.0	266.0	\
		gimpbase-2.0	266.0	\
		gimpcolor-2.0	266.0	\
		gimpconfig-2.0	266.0	\
		gimpmath-2.0	266.0	\
		gimpmodule-2.0	266.0	\
		gimpthumb-2.0	266.0	\
		gimpui-2.0	266.0	\
		gimpwidgets-2.0	266.0

CATEGORIES=	graphics
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>
	
DIR=		gimp/v2.6
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/${DIR}/

HOMEPAGE=	http://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	::textproc/libxslt
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		aa.>=1.3::graphics/aalib \
		dbus-glib-1::x11/dbus-glib \
		exif::graphics/libexif \
		mng::graphics/libmng \
		tiff.>=35::graphics/tiff \
		wmf.>=6,wmflite.>=6::graphics/libwmf \
		poppler.>=3,poppler-glib.>=3::print/poppler \
		gegl-0.0::graphics/gegl \
		:py-gtk2-*:x11/py-gtk2 \
		curl::net/curl

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xrender Xt atk-1.0 c \
		Xcomposite Xdamage pcre crypto idn ssl \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 jpeg.>=62 lcms.>=1 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png.>=4 \
		pthread ncurses xml2 z cairo dbus-1 glitz \
		Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr \
		expat Xcomposite Xdamage gthread-2.0 pcre \
		bz2 croco-0.6 gio-2.0 gsf-1 rsvg-2 babl-0.0 \
		pthread-stubs xcb

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--without-gtkhtml2 --without-gvfs \
		--without-gnomevfs --with-libcurl \
		--without-webkit --enable-gimp-remote
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
