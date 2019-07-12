# $OpenBSD: Makefile,v 1.124 2019/07/12 20:46:59 sthen Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME=	gimp-2.8.22
REVISION=	5

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

DIR=		gimp/v2.8
MASTER_SITES=	https://download.gimp.org/pub/${DIR}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/pub/${DIR}/ \
		http://mirrors.go-parts.com/gimp/${DIR}/

HOMEPAGE=	http://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	textproc/libxslt \
		x11/py-gtk2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/py-gtk2
LIB_DEPENDS=	archivers/bzip2 \
		devel/libexecinfo \
		x11/gtk+2 \
		graphics/aalib \
		x11/dbus-glib \
		graphics/libexif \
		graphics/libmng \
		graphics/tiff \
		graphics/libwmf \
		print/ghostscript/gnu \
		print/poppler \
		graphics/gegl>=0.2 \
		net/curl

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xmu Xpm Xrandr Xrender Xt aa atk-1.0 avahi-client
WANTLIB += avahi-common babl-0.1 bz2 c cairo croco-0.6 crypto cups
WANTLIB += cupsimage curl dbus-1 dbus-glib-1 execinfo exif expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gs gthread-2.0 gtk-x11-2.0 harfbuzz hogweed iconv idn2 ijs
WANTLIB += intl jasper jbig2dec jpeg lcms lcms2 lzma m mng curses
WANTLIB += nettle nghttp2 openjp2 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png poppler poppler-glib
WANTLIB += rsvg-2 ssl tasn1 tiff unistring wmf-0.2 wmflite-0.2 xcb
WANTLIB += xcb-render xcb-shm xml2 z fribidi

MODULES=	textproc/intltool \
		lang/python

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-gimp-console \
		--with-libcurl \
		--with-pdbgen \
		--without-gvfs \
		--without-webkit
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/gimp/2.0/plug-ins
	@rm ${PREFIX}/lib/gimp/2.0/modules/*.{a,la}
	@rm ${PREFIX}/lib/gimp/2.0/python/*.{a,la}

.include <bsd.port.mk>
