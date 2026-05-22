COMMENT =	advanced drawing and image manipulation

VERSION =	6.0.1
DISTNAME =	krita-${VERSION}

SHARED_LIBS +=  kritabasicflakes          5.0 # 16.0
SHARED_LIBS +=  kritaflake                15.0 # 16.0
SHARED_LIBS +=  kritapigment              10.0 # 16.0
SHARED_LIBS +=  kritaplugin               4.0 # 16.0
SHARED_LIBS +=  kritastore                4.0 # 16.0
SHARED_LIBS +=  kritaversion              1.1 # 16.0
SHARED_LIBS +=  kritawidgets              11.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          10.0 # 16.0
SHARED_LIBS +=  kritacommand              5.2 # 16.0
SHARED_LIBS +=  kritaimpex                2.1 # 16.0
SHARED_LIBS +=  kritalibkis               5.0 # 16.0
SHARED_LIBS +=  kritalibkra               9.0 # 16.0
SHARED_LIBS +=  kritametadata             3.0 # 18.0
SHARED_LIBS +=  kritaqmicinterface        2.0 # 17.0
SHARED_LIBS +=  kritaresources            5.0 # 17.0
SHARED_LIBS +=  kritaresourcewidgets      2.0 # 17.0
SHARED_LIBS +=  kritapsdutils             2.0 # 0.0
SHARED_LIBS +=  kritatiffpsd              0.0 # 0.0
SHARED_LIBS +=  kritaexifcommon           1.0 # 0.0
SHARED_LIBS +=  kritamultiarch            0.1 # 0.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  6.0 # 14.0
SHARED_LIBS +=  kritacolor                3.0 # 14.0
SHARED_LIBS +=  kritaglobal               8.0 # 14.0
SHARED_LIBS +=  kritaimage                70.0 # 0.0
SHARED_LIBS +=  kritalibbrush             60.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           61.0 # 0.0
SHARED_LIBS +=  kritaui                   75.0 # 0.0
SHARED_LIBS +=  kritaqmlwidgets           0.0 # 0.0
SHARED_LIBS +=  kritasurfacecolormanagementapi 0.0 # 0.0

CATEGORIES =	graphics

DPB_PROPERTIES =	parallel

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += KDcrawQt6 KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6Crash KF6GuiAddons KF6I18n
WANTLIB += KF6ItemViews KF6WidgetsAddons OpenColorIO OpenEXR-3_4
WANTLIB += OpenEXRCore-3_4 Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6QuickWidgets Qt6Sql
WANTLIB += Qt6Svg Qt6SvgWidgets Qt6WaylandClient Qt6Widgets Qt6Xml
WANTLIB += SDL2 X11 bz2 c exiv2 fftw3 fontconfig freetype fribidi
WANTLIB += gif glib-2.0 gobject-2.0 gsl gslcblas harfbuzz heif
WANTLIB += intl jpeg json-c jxl jxl_threads lcms2 m mlt++-7 mlt-7
WANTLIB += mypaint openjp2 png poppler poppler-qt6 quazip1-qt6
WANTLIB += sharpyuv tiff turbojpeg unibreak wayland-client wayland-cursor
WANTLIB += webp webpdemux webpmux xkbcommon z

SITES =		${SITE_KDE:=stable/krita/${VERSION}/}
EXTRACT_SUFX =	.tar.xz

# needs c++ and python
COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c c++

MODULES =	devel/kf6 \
		lang/python

MODPY_RUNDEP=	No

RUN_DEPENDS =		devel/desktop-file-utils \
			net/curl \
			x11/gtk+4,-guic

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/boost \
			devel/kf6/kdoctools \
			devel/kf6/kitemmodels \
			devel/immer \
			devel/lager \
			devel/zug \
			math/eigen3 \
			net/curl

LIB_DEPENDS =		archivers/bzip2 \
			archivers/quazip,qt6 \
			devel/fribidi \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/gsl \
			devel/harfbuzz \
			devel/json-c \
			devel/kf6/kcolorscheme \
			devel/kf6/kcompletion \
			devel/kf6/kconfig \
			devel/kf6/kcoreaddons \
			devel/kf6/kcrash \
			devel/kf6/kguiaddons\
			devel/kf6/ki18n \
			devel/kf6/kitemviews \
			devel/kf6/kwidgetsaddons \
			devel/sdl2 \
			graphics/exiv2 \
			graphics/giflib \
			graphics/jpeg \
			graphics/lcms2 \
			graphics/libjxl \
			graphics/libmypaint \
			graphics/libwebp \
			graphics/opencolorio \
			graphics/openexr \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			math/fftw3,-main,double \
			math/imath \
			multimedia/libheif \
			multimedia/mlt7 \
			print/poppler,-qt6 \
			textproc/libunibreak \
			wayland/wayland \
			x11/kde-applications/kf6-libkdcraw \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/xkbcommon

# stop searching for optional packages
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SIP=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_PyQt6=ON \

CONFIGURE_ARGS +=	-DENABLE_UPDATERS=OFF

CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON -DALLOW_UNSTABLE=QT6

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=		-I${LOCALBASE}/include/Imath

# mypaint
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
