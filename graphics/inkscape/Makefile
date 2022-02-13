# $OpenBSD: Makefile,v 1.94 2022/02/13 07:53:45 rsadowski Exp $

COMMENT =	SVG vector drawing application

DISTNAME =	inkscape-1.1.2

CATEGORIES =	graphics

HOMEPAGE =	https://www.inkscape.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} 2geom ICE Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xext atk-1.0 atkmm-1.6 boost_filesystem-mt
WANTLIB += c cairo cairo-gobject cairomm-1.0 enchant-2 fontconfig
WANTLIB += freetype gc gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gsl gslcblas gspell-1 gtk-3 gtkmm-3.0 harfbuzz iconv
WANTLIB += intl jpeg lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 png poppler poppler-glib potrace sigc-2.0
WANTLIB += soup-2.4 xml2 xslt z

MASTER_SITES =	https://media.inkscape.org/dl/resources/file/
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

LIB_DEPENDS =	devel/boost \
		devel/boehm-gc \
		devel/gsl \
		devel/libsoup \
		devel/pango \
		geo/lib2geom \
		graphics/ImageMagick \
		graphics/lcms2 \
		graphics/png \
		graphics/potrace \
		print/poppler \
		textproc/gspell \
		textproc/libxslt \
		x11/gtk+3 \
		x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		fonts/liberation-fonts \
		math/py-numpy${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/inkscape-1.1.2_2022-02-04_0a00cf5339

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
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/inkscape/extensions

.include <bsd.port.mk>
