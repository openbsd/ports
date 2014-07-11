# $OpenBSD: Makefile,v 1.98 2014/07/11 17:02:00 giovanni Exp $

COMMENT=	GNU Image Manipulation Program

SHARED_ONLY=	Yes

DISTNAME=	gimp-2.8.10

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
MASTER_SITES=	http://download.gimp.org/pub/${DIR}/ \
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
		print/ghostscript/gnu \
		print/poppler \
		graphics/gegl>=0.2 \
		graphics/openjpeg \
		net/curl

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xmu Xpm Xrandr Xrender Xt aa atk-1.0 avahi-client
WANTLIB += avahi-common babl-0.1 bz2 c cairo croco-0.6 crypto
WANTLIB += cups cupsimage curl dbus-1 dbus-glib-1 execinfo exif
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gegl-0.2 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gs gthread-2.0 gtk-x11-2.0 harfbuzz idn ijs jasper
WANTLIB += jbig2dec jpeg lcms lcms2 m mng ncurses openjpeg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler
WANTLIB += poppler-glib pthread pthread-stubs rsvg-2 ssl tiff
WANTLIB += wmf-0.2 wmflite-0.2 xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-gimp-console \
		--disable-gtk-doc \
		--disable-gtk-doc-html \
		--with-libcurl \
		--without-gvfs \
		--without-webkit
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
				ac_cv_path_GTKDOC_REBASE="" \
				ac_cv_path_GTKDOC_MKPDF=""

post-install:
	@rm ${PREFIX}/lib/gimp/2.0/modules/*.{a,la}
	@rm ${PREFIX}/lib/gimp/2.0/python/*.{a,la}

.include <bsd.port.mk>
