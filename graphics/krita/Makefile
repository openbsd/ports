# $OpenBSD: Makefile,v 1.56 2022/01/07 12:16:21 rsadowski Exp $

COMMENT =	advanced drawing and image manipulation

VERSION =	5.0.2
DISTNAME =	krita-${VERSION}

SHARED_LIBS +=  kritabasicflakes          4.0 # 16.0
SHARED_LIBS +=  kritacolord               2.0 # 16.0
SHARED_LIBS +=  kritaflake                7.0 # 16.0
SHARED_LIBS +=  kritapigment              7.0 # 16.0
SHARED_LIBS +=  kritaplugin               2.0 # 16.0
SHARED_LIBS +=  kritastore                3.0 # 16.0
SHARED_LIBS +=  kritaversion              1.0 # 16.0
SHARED_LIBS +=  kritawidgets              6.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          5.0 # 16.0
SHARED_LIBS +=  kritacommand              3.0 # 16.0
SHARED_LIBS +=  kritaimpex                2.0 # 16.0
SHARED_LIBS +=  kritalibkis               3.0 # 16.0
SHARED_LIBS +=  kritalibkra               5.0 # 16.0
SHARED_LIBS +=  kritaqml                  3.0 # 16.0
SHARED_LIBS +=  kritametadata             1.0 # 18.0
SHARED_LIBS +=  kritaqmicinterface        0.0 # 17.0
SHARED_LIBS +=  kritaresources            1.0 # 17.0
SHARED_LIBS +=  kritaresourcewidgets      0.0 # 17.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  4.0 # 14.0
SHARED_LIBS +=  kritacolor                3.0 # 14.0
SHARED_LIBS +=  kritaglobal               5.1 # 14.0
SHARED_LIBS +=  kritaimage                62.0 # 0.0
SHARED_LIBS +=  kritalibbrush             57.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           57.0 # 0.0
SHARED_LIBS +=  kritaui                   64.0 # 0.0

CATEGORIES =	graphics

DPB_PROPERTIES =	parallel

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_1 IlmThread-3_1 Imath-3_1
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5ItemViews KF5WidgetsAddons
WANTLIB += KF5WindowSystem OpenColorIO OpenEXR-3_1 Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Sql
WANTLIB += Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext Xi
WANTLIB += boost_system-mt c exiv2 fftw3 gif gsl gslcblas heif
WANTLIB += jpeg lcms2 m openjp2 png poppler poppler-qt5 quazip5
WANTLIB += raw tiff webp z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krita/${VERSION}/}
EXTRACT_SUFX =	.tar.gz

MODULES =	devel/kf5 \
		lang/python

MODPY_RUNDEP=	No

RUN_DEPENDS =		devel/desktop-file-utils \
			net/curl \
			x11/gtk+3,-guic \
			x11/qt5/qtquickcontrols

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			math/eigen3 \
			net/curl

LIB_DEPENDS =		archivers/quazip \
			devel/boost \
			devel/gsl \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kguiaddons\
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			graphics/exiv2 \
			graphics/giflib \
			graphics/jpeg \
			graphics/lcms2 \
			graphics/libraw \
			graphics/libwebp \
			graphics/opencolorio \
			graphics/openexr \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			math/fftw3 \
			multimedia/libheif \
			print/poppler \
			print/poppler,-qt5 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia \
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

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
