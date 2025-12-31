COMMENT =	SVG vector drawing application

VERSION =	1.4.3
DISTNAME =	inkscape-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://www.inkscape.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  inkscape_base             3.0 # 0.0

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} 2geom ICE Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xext atk-1.0 atkmm-1.6 boost_atomic-mt
WANTLIB += boost_filesystem-mt boost_system-mt c cairo cairo-gobject
WANTLIB += cairomm-1.0 enchant-2 epoxy fontconfig freetype gc
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 gsl gslcblas gspell-1
WANTLIB += gtk-3 gtkmm-3.0 gtksourceview-4 harfbuzz iconv intl
WANTLIB += jpeg lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 png poppler poppler-glib potrace sigc-2.0
WANTLIB += xml2 xslt z

SITES =		https://media.inkscape.org/dl/resources/file/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		lang/python \
		lang/ruby

COMPILER =	base-clang ports-gcc

# We are just substituting paths at build time
MODRUBY_BUILDDEP =	No

# There are no (enabled) ruby extensions yet, but users may like
# to write their own extensions. Add Ruby as a soft dependency.
# Note that Python is already pulled in indirectly by py-lxml.
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gtest

LIB_DEPENDS =	converters/libiconv \
		devel/atk2mm \
		devel/boehm-gc \
		devel/boost \
		devel/gettext,-runtime \
		devel/glib2 \
		devel/glib2mm \
		devel/gsl \
		devel/harfbuzz \
		devel/libsigc++-2 \
		devel/pango \
		devel/pangomm \
		geo/lib2geom>=1.4 \
		graphics/ImageMagick \
		graphics/cairo \
		graphics/cairomm \
		graphics/gdk-pixbuf2 \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/png \
		graphics/potrace \
		print/poppler \
		textproc/enchant2 \
		textproc/gspell \
		textproc/libxml \
		textproc/libxslt \
		x11/gnome/at-spi2-core \
		x11/gtk+3 \
		x11/gtk3mm \
		x11/gtksourceview4

RUN_DEPENDS =	devel/desktop-file-utils \
		fonts/liberation-fonts \
		math/py-numpy \
		print/transfig \
		textproc/py-cssselect \
		textproc/py-lxml \
		textproc/py-tinycss2 \
		www/py-requests \
		x11/gtk+4,-guic

WRKDIST =	${WRKDIR}/inkscape-${VERSION}_2025-12-25_0d15f75042

SUBST_VARS +=	RUBY MODRUBY_REV

pre-configure:
	# As discussed on the ports mailing list, remove internationalised
	# manual pages, as our mandoc implementation does not yet deal with
	# them properly.
	rm  ${WRKDIST}/man/{inkscape,inkview}.*.pod.in
	find ${WRKDIST} -name i18n.py \
		-exec sed -i 's,python,${MODPY_BIN},' {} +;
	${SUBST_CMD} ${WRKDIST}/src/extension/implementation/script.cpp \
		${WRKDIST}/src/inkscape-main.cpp

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/inkscape/extensions

.include <bsd.port.mk>
