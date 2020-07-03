# $OpenBSD: Makefile,v 1.84 2020/07/03 21:12:55 sthen Exp $

COMMENT =	SVG vector drawing application

DISTNAME =	inkscape-1.0
REVISION =	2

CATEGORIES =	graphics

HOMEPAGE =	https://www.inkscape.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xext aspell atk-1.0 atkmm-1.6
WANTLIB += c cairo cairo-gobject cairomm-1.0 double-conversion
WANTLIB += fontconfig freetype gc gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gdl-3 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gsl gslcblas gtk-3 gtkmm-3.0 harfbuzz iconv
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

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gtest \
		devel/boost

LIB_DEPENDS =	math/double-conversion \
		devel/boehm-gc \
		devel/gsl \
		devel/libsoup \
		devel/pango \
		graphics/ImageMagick \
		graphics/lcms2 \
		graphics/png \
		graphics/potrace \
		print/poppler \
		textproc/aspell/core \
		textproc/libxslt \
		x11/gnome/gdl \
		x11/gtk+3 \
		x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		fonts/liberation-fonts \
		textproc/py-lxml${MODPY_FLAVOR} \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/inkscape-1.0_2020-05-01_4035a4fb49

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
