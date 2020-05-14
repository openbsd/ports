# $OpenBSD: Makefile,v 1.41 2020/05/14 12:35:31 ajacoutot Exp $

BROKEN-powerpc =	colors are off and as such it is not useable

COMMENT =	advanced drawing and image manipulation

VERSION =	4.2.9
DISTNAME =	krita-${VERSION}
REVISION =	0

SHARED_LIBS +=  kritabasicflakes          2.0 # 16.0
SHARED_LIBS +=  kritacolord               1.0 # 16.0
SHARED_LIBS +=  kritaflake                3.0 # 16.0
SHARED_LIBS +=  kritaodf                  2.0 # 16.0
SHARED_LIBS +=  kritapigment              3.0 # 16.0
SHARED_LIBS +=  kritaplugin               1.0 # 16.0
SHARED_LIBS +=  kritastore                2.0 # 16.0
SHARED_LIBS +=  kritatext                 1.0 # 16.0
SHARED_LIBS +=  kritatextlayout           1.0 # 16.0
SHARED_LIBS +=  kritaversion              1.0 # 16.0
SHARED_LIBS +=  kritawidgets              2.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          4.0 # 16.0
SHARED_LIBS +=  kritacommand              2.0 # 16.0
SHARED_LIBS +=  kritaimpex                1.0 # 16.0
SHARED_LIBS +=  kritalibkis               2.0 # 16.0
SHARED_LIBS +=  kritalibkra               2.0 # 16.0
SHARED_LIBS +=  kritaqml                  2.0 # 16.0
SHARED_LIBS +=  kritametadata             0.0 # 18.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  2.0 # 14.0
SHARED_LIBS +=  kritacolor                2.0 # 14.0
SHARED_LIBS +=  kritaglobal               4.0 # 14.0
SHARED_LIBS +=  kritaimage                54.0 # 0.0
SHARED_LIBS +=  kritalibbrush             52.1 # 0.0
SHARED_LIBS +=  kritalibpaintop           53.0 # 0.0
SHARED_LIBS +=  kritaui                   57.0 # 0.0

CATEGORIES =	graphics
DPB_PROPERTIES =	parallel

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 ICE Iex-2_5 IlmImf-2_5
WANTLIB += IlmThread-2_5 Imath-2_5 KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n
WANTLIB += KF5ItemViews KF5WidgetsAddons KF5WindowSystem OpenColorIO
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext Xi
WANTLIB += boost_system-mt c exiv2 fftw3 gif gsl gslcblas jpeg
WANTLIB += lcms2 m png poppler poppler-qt5 quazip5 raw tiff z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krita/4.2.9/}
EXTRACT_SUFX =	.tar.gz

MODULES =	devel/kf5 \
		lang/python

MODPY_RUNDEP=	No
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS +=	devel/desktop-file-utils \
		net/curl \
		x11/gtk+3,-guic \
		x11/qt5/qtquickcontrols

LIB_DEPENDS +=		archivers/quazip \
			devel/boost \
			devel/gsl \
			devel/kf5/karchive \
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
			graphics/opencolorio \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			math/fftw3 \
			print/poppler,-qt5 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qtx11extras

BUILD_DEPENDS +=	devel/gettext,-tools \
			devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			math/eigen3 \
			net/curl

# stop searching for optional packages
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SIP=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_HEIF=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Vc=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_PyQt5=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
