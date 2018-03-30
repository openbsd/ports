# $OpenBSD: Makefile,v 1.8 2018/03/30 17:29:48 rsadowski Exp $

COMMENT =	advanced drawing and image manipulation

VERSION =	4.0.0
DISTNAME =	krita-${VERSION}

SHARED_LIBS +=  kritabasicflakes          0.0 # 16.0
SHARED_LIBS +=  kritacolord               0.0 # 16.0
SHARED_LIBS +=  kritaflake                1.0 # 16.0
SHARED_LIBS +=  kritaodf                  0.0 # 16.0
SHARED_LIBS +=  kritapigment              1.0 # 16.0
SHARED_LIBS +=  kritaplugin               0.0 # 16.0
SHARED_LIBS +=  kritastore                0.0 # 16.0
SHARED_LIBS +=  kritatext                 0.0 # 16.0
SHARED_LIBS +=  kritatextlayout           0.0 # 16.0
SHARED_LIBS +=  kritaundo2                0.0 # 16.0
SHARED_LIBS +=  kritavectorimage          1.0 # 16.0
SHARED_LIBS +=  kritaversion              0.0 # 16.0
SHARED_LIBS +=  kritawidgets              0.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          2.0 # 16.0
SHARED_LIBS +=  kritacommand              0.0 # 16.0
SHARED_LIBS +=  kritaimpex                0.0 # 16.0
SHARED_LIBS +=  kritalibkis               0.0 # 16.0
SHARED_LIBS +=  kritalibkra               0.0 # 16.0
SHARED_LIBS +=  kritaqml                  0.0 # 16.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  1.0 # 14.0
SHARED_LIBS +=  kritacolor                1.0 # 14.0
SHARED_LIBS +=  kritaglobal               2.0 # 14.0
SHARED_LIBS +=  kritaimage                52.0 # 0.0
SHARED_LIBS +=  kritalibbrush             51.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           51.0 # 0.0
SHARED_LIBS +=  kritaui                   55.0 # 0.0

CATEGORIES =	graphics
DPB_PROPERTIES =	parallel

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Half ICE Iex IlmImf IlmThread Imath
WANTLIB += KF5Archive KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5ItemViews
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += OpenColorIO Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext Xi
WANTLIB += boost_system-mt c exiv2 fftw3 gif gsl gslcblas jpeg
WANTLIB += lcms2 m png poppler poppler-qt5 raw tiff xcb xcb-util
WANTLIB += z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krita/${VERSION:S/.1//}/}
EXTRACT_SUFX =	.tar.gz

MODULES =	devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/gettext \
		net/curl \
		x11/gtk+3,-guic

LIB_DEPENDS +=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/giflib \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/opencolorio \
			graphics/openexr \
			graphics/libraw \
			math/fftw3 \
			print/poppler,,-qt5 \
			devel/boost \
			devel/kf5/karchive \
			devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kcompletion \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons\
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kwindowsystem \
			devel/kf5/kcrash \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/gsl \
			x11/qt5/qtsvg \
			x11/qt5/qtmultimedia

BUILD_DEPENDS +=	math/eigen3 \
			net/curl \
			devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			devel/gettext-tools

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SIP:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_PyQt5:Bool=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
