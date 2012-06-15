# $OpenBSD: Makefile,v 1.80 2012/06/15 08:32:16 ajacoutot Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME=	gimp-2.8.0
REVISION=	0

SHARED_LIBS+=	gimp-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpbase-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpcolor-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpconfig-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpmath-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpmodule-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpthumb-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpui-2.0	272.0	# 800.0
SHARED_LIBS+=	gimpwidgets-2.0	272.0	# 800.0

CATEGORIES=	graphics
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>
	
DIR=		gimp/v2.8
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/${DIR}/

HOMEPAGE=	http://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	textproc/libxslt \
		x11/py-gtk2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/py-gtk2
LIB_DEPENDS=	x11/gtk+2 \
		graphics/aalib \
		x11/dbus-glib \
		graphics/libexif \
		graphics/libmng \
		graphics/tiff \
		graphics/libwmf \
		print/poppler \
		graphics/gegl>=0.2 \
		graphics/openjpeg \
		net/curl

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xrender Xt atk-1.0 c \
		Xcomposite Xdamage pcre crypto idn ssl \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 jpeg>=62 lcms>=1 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png>=4 \
		pthread ncurses xml2 z cairo dbus-1 \
		Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr \
		expat Xcomposite Xdamage gthread-2.0 pcre \
		croco-0.6 gio-2.0 rsvg-2 babl-0.1 \
		pthread-stubs xcb execinfo xcb-render \
		gdk-x11-2.0 gdk_pixbuf-2.0 bz2 jasper \
		gtk-x11-2.0 tiff>=35 aa>=1.3 dbus-glib-1 \
		exif mng poppler>=3 wmf-0.2 wmflite-0.2 \
		poppler-glib>=3 gegl-0.2 openjpeg>=4 curl \
		GL Xxf86vm drm xcb-shm ffi stdc++

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--without-gvfs \
		--with-libcurl \
		--without-webkit --enable-gimp-console
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
