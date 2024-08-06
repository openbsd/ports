COMMENT =	advanced drawing and image manipulation

VERSION =	5.2.3
DISTNAME =	krita-${VERSION}

SHARED_LIBS +=  kritabasicflakes          4.1 # 16.0
SHARED_LIBS +=  kritacolord               2.0 # 16.0
SHARED_LIBS +=  kritaflake                11.1 # 16.0
SHARED_LIBS +=  kritapigment              9.0 # 16.0
SHARED_LIBS +=  kritaplugin               3.0 # 16.0
SHARED_LIBS +=  kritastore                4.0 # 16.0
SHARED_LIBS +=  kritaversion              1.1 # 16.0
SHARED_LIBS +=  kritawidgets              9.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          9.0 # 16.0
SHARED_LIBS +=  kritacommand              5.0 # 16.0
SHARED_LIBS +=  kritaimpex                2.1 # 16.0
SHARED_LIBS +=  kritalibkis               4.0 # 16.0
SHARED_LIBS +=  kritalibkra               7.0 # 16.0
SHARED_LIBS +=  kritaqml                  3.0 # 16.0
SHARED_LIBS +=  kritametadata             2.0 # 18.0
SHARED_LIBS +=  kritaqmicinterface        1.0 # 17.0
SHARED_LIBS +=  kritaresources            4.0 # 17.0
SHARED_LIBS +=  kritaresourcewidgets      1.0 # 17.0
SHARED_LIBS +=  kritapsdutils             1.0 # 0.0
SHARED_LIBS +=  kritatiffpsd              0.0 # 0.0
SHARED_LIBS +=  kritaexifcommon           0.0 # 0.0
SHARED_LIBS +=  kritamultiarch            0.1 # 0.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  5.0 # 14.0
SHARED_LIBS +=  kritacolor                3.0 # 14.0
SHARED_LIBS +=  kritaglobal               6.1 # 14.0
SHARED_LIBS +=  kritaimage                66.0 # 0.0
SHARED_LIBS +=  kritalibbrush             59.1 # 0.0
SHARED_LIBS +=  kritalibpaintop           59.0 # 0.0
SHARED_LIBS +=  kritaui                   70.0 # 0.0

CATEGORIES =	graphics

DPB_PROPERTIES =	parallel

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5ItemViews KF5KDcraw
WANTLIB += KF5WidgetsAddons KF5WindowSystem OpenColorIO OpenEXR-3_2
WANTLIB += OpenEXRCore-3_2 Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SDL2 SM X11 Xext Xi bz2 c exiv2
WANTLIB += fftw3 fontconfig freetype fribidi gif glib-2.0 gobject-2.0
WANTLIB += gsl gslcblas harfbuzz heif intl jpeg json-c jxl jxl_threads
WANTLIB += lcms2 m mlt++-7 mlt-7 mypaint openjp2 png poppler poppler-qt5
WANTLIB += quazip1-qt5 tiff turbojpeg unibreak webp webpdemux
WANTLIB += webpmux z

SITES =		${SITE_KDE:=stable/krita/${VERSION}/}
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf5 \
		lang/python

MODPY_RUNDEP=	No

RUN_DEPENDS =		devel/desktop-file-utils \
			net/curl \
			x11/gtk+4,-guic \
			x11/qt5/qtquickcontrols

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/boost \
			devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			devel/immer \
			devel/lager \
			devel/zug \
			math/eigen3 \
			net/curl

LIB_DEPENDS =		archivers/quazip \
			archivers/bzip2 \
			devel/fribidi \
			devel/gsl \
			devel/harfbuzz \
			devel/json-c \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kguiaddons\
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
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
			print/poppler \
			print/poppler,-qt5 \
			textproc/libunibreak \
			x11/kde-applications/libkdcraw \
			x11/qt5/qtsvg \
			x11/qt5/qtx11extras

# stop searching for optional packages
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SIP=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Vc=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_PyQt5=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_SeExpr2=ON

CONFIGURE_ARGS +=	-DENABLE_UPDATERS=OFF

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=		-I${LOCALBASE}/include/Imath

# mypaint
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
