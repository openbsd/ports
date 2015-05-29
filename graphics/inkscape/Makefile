# $OpenBSD: Makefile,v 1.44 2015/05/29 12:24:37 ajacoutot Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.91
CATEGORIES=	graphics
REVISION=	2

MASTER_SITES =	https://inkscape.org/en/gallery/item/3854/
HOMEPAGE=	http://www.inkscape.org/

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE Magick++ MagickCore MagickWand SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt aspell atk-1.0 atkmm-1.6 bz2 c cairo cairomm-1.0
WANTLIB += djvulibre enchant exif expat ffi fftw3 fontconfig freetype
WANTLIB += gc gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsl gslcblas gthread-2.0 gtk-x11-2.0 gtkmm-2.4 gtkspell
WANTLIB += harfbuzz jasper jbig jpeg lcms2 ltdl lzma m openjpeg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png poppler poppler-glib popt pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ tiff webp wmf-0.2 wmflite-0.2 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		lang/ruby

# We are just substituting paths at build time
MODPY_BUILDDEP =	No
MODRUBY_BUILDDEP =	No

# There are no (enabled) ruby extensions yet, but users may like
# to write their own extensions. Add Ruby as a soft dependency.
# Note that Python is already pulled in indirectly by py-lxml.
MODRUBY_RUNDEP =	No

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	devel/boehm-gc \
		devel/gsl \
		devel/popt \
		graphics/ImageMagick \
		graphics/lcms2 \
		graphics/libexif \
		graphics/png \
		print/poppler \
		textproc/aspell/core \
		textproc/gtkspell \
		textproc/libxslt \
		x11/gtk2mm>=2.24.4
RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-lxml \
		x11/gtk+3,-guic

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
#AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--without-gnome-vfs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ImageMagick \
			  -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

# As discussed on the ports mailing list, remove internationalised manual
# pages, as our mandoc implementation does not yet deal with them properly.
RM_MANS=	man/el man/fr man/ja man/man1/inkscape.*.1 \
		man/sk man/zh_TW

SUBST_VARS +=	RUBY MODRUBY_REV
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/extension/implementation/script.cpp

post-install:
.for i in ${RM_MANS}
	rm -Rf ${PREFIX}/${i}
.endfor

.include <bsd.port.mk>
