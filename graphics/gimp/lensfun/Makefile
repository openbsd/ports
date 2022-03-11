COMMENT =	gimp plugin for correcting lens distortion

PKGNAME =	gimp-lensfun-plugin-$V

V = 0.2.4
GH_ACCOUNT = seebk
GH_PROJECT = GIMP-Lensfun
GH_TAGNAME = $V

REVISION =	0

CATEGORIES =	graphics

HOMEPAGE = https://seebk.github.io/GIMP-Lensfun/

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 babl-0.1
WANTLIB += c cairo exiv2 fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gegl-0.4 gimp-2.0 gimpbase-2.0 gimpcolor-2.0 gimpconfig-2.0
WANTLIB += gimpmath-2.0 gimpmodule-2.0 gimpui-2.0 gimpwidgets-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z lensfun


# MASTER_SITES = http://www.logarithmic.net/pfh-files/resynthesizer/

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =	graphics/gimp/stable
RUN_DEPENDS =	graphics/gimp/stable
LIB_DEPENDS =	graphics/lensfun
# there is no actual test and it errors out
NO_TEST =	Yes
USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="$(CXX)" CXXFLAGS="$(CXXFLAGS)"


## for an easier time if we ever get gimp 3.0
GIMPV = 2.0
SUBST_VARS +=	GIMPV

PLUGINDIR= ${DESTDIR}/`gimptool-2.0 --gimpplugindir`/plug-ins

do-install:
	mkdir -p ${PLUGINDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/gimp-lensfun ${PLUGINDIR}

.include <bsd.port.mk>
