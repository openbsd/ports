# $OpenBSD: Makefile,v 1.79 2019/11/07 15:32:55 ajacoutot Exp $

COMMENT =	SVG vector drawing application

DISTNAME =	inkscape-0.92.4
REVISION =	1

CATEGORIES =	graphics

HOMEPAGE =	https://www.inkscape.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt aspell atk-1.0
WANTLIB += atkmm-1.6 bz2 c cairo cairomm-1.0 djvulibre enchant
WANTLIB += exif expat ffi fftw3 fontconfig freetype fribidi gc
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsl gslcblas gthread-2.0 gtk-x11-2.0 gtkmm-2.4 gtkspell
WANTLIB += harfbuzz iconv intl jasper jbig jpeg lcms2 lzma m openjp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png poppler poppler-glib popt potrace raw_r
WANTLIB += sigc-2.0 tiff webp webpmux xcb xcb-render xcb-shm xml2
WANTLIB += xslt z

MASTER_SITES =	https://media.inkscape.org/dl/resources/file/
EXTRACT_SUFX =	.tar.bz2

MODULES =	textproc/intltool \
		lang/python \
		lang/ruby

COMPILER =	base-clang ports-gcc

# We are just substituting paths at build time
MODRUBY_BUILDDEP =	No

# There are no (enabled) ruby extensions yet, but users may like
# to write their own extensions. Add Ruby as a soft dependency.
# Note that Python is already pulled in indirectly by py-lxml.
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		devel/boost

LIB_DEPENDS =	devel/boehm-gc \
		devel/gsl \
		devel/popt \
		devel/pango \
		graphics/ImageMagick \
		graphics/libraw \
		graphics/lcms2 \
		graphics/libexif \
		graphics/png \
		graphics/potrace \
		graphics/libwebp \
		print/poppler \
		textproc/aspell/core \
		textproc/gtkspell \
		textproc/libxslt \
		x11/gtk2mm>=2.24.4

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		fonts/liberation-fonts \
		textproc/py-lxml \
		x11/gtk+3,-guic

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_ARGS =	-without-gnome-vfs

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/ImageMagick \
			-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# As discussed on the ports mailing list, remove internationalised manual
# pages, as our mandoc implementation does not yet deal with them properly.
RM_MANS =	man/el man/fr man/ja man/man1/inkscape.*.1 \
		man/sk man/zh_TW  man/de

SUBST_VARS +=	RUBY MODRUBY_REV

pre-configure:
	find ${WRKDIST} -name i18n.py \
		-exec sed -i 's,python,${MODPY_BIN},' {} +;
	${SUBST_CMD} ${WRKSRC}/src/extension/implementation/script.cpp \
		${WRKSRC}/src/main.cpp
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

post-install:
.for i in ${RM_MANS}
	rm -Rf ${PREFIX}/${i}
.endfor
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/inkscape/extensions

.include <bsd.port.mk>
