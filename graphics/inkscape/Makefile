# $OpenBSD: Makefile,v 1.49 2016/04/18 07:57:55 ajacoutot Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.91
CATEGORIES=	graphics
REVISION=	7

MASTER_SITES =	https://inkscape.org/en/gallery/item/3854/
HOMEPAGE=	http://www.inkscape.org/

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt aspell atk-1.0 atkmm-1.6 bz2 c cairo
WANTLIB += cairomm-1.0 djvulibre enchant exif expat ffi fftw3
WANTLIB += fontconfig freetype gc gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsl gslcblas gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += gtkspell harfbuzz iconv intl jbig jpeg lcms2 lzma m
WANTLIB += openjp2 openjpeg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png poppler poppler-glib
WANTLIB += popt pthread pthread-stubs sigc-2.0 stdc++ tiff webp
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

MODULES=	textproc/intltool \
		lang/python \
		lang/ruby

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

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
