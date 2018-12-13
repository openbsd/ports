# $OpenBSD: Makefile,v 1.18 2018/12/13 19:53:24 sthen Exp $

COMMENT =	advanced drawing and image manipulation

VERSION =	4.1.5
DISTNAME =	krita-${VERSION}
REVISION =	1

SHARED_LIBS +=  kritabasicflakes          1.0 # 16.0
SHARED_LIBS +=  kritacolord               1.0 # 16.0
SHARED_LIBS +=  kritaflake                2.0 # 16.0
SHARED_LIBS +=  kritaodf                  1.0 # 16.0
SHARED_LIBS +=  kritapigment              2.0 # 16.0
SHARED_LIBS +=  kritaplugin               1.0 # 16.0
SHARED_LIBS +=  kritastore                1.0 # 16.0
SHARED_LIBS +=  kritatext                 1.0 # 16.0
SHARED_LIBS +=  kritatextlayout           1.0 # 16.0
SHARED_LIBS +=  kritaundo2                1.0 # 16.0
SHARED_LIBS +=  kritavectorimage          2.0 # 16.0
SHARED_LIBS +=  kritaversion              1.0 # 16.0
SHARED_LIBS +=  kritawidgets              1.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          3.0 # 16.0
SHARED_LIBS +=  kritacommand              1.0 # 16.0
SHARED_LIBS +=  kritaimpex                1.0 # 16.0
SHARED_LIBS +=  kritalibkis               1.0 # 16.0
SHARED_LIBS +=  kritalibkra               1.0 # 16.0
SHARED_LIBS +=  kritaqml                  1.0 # 16.0
# XXX Version numbers from editors/calligra 2.x port
SHARED_LIBS +=  kritapsd                  2.0 # 14.0
SHARED_LIBS +=  kritacolor                2.0 # 14.0
SHARED_LIBS +=  kritaglobal               3.0 # 14.0
SHARED_LIBS +=  kritaimage                53.0 # 0.0
SHARED_LIBS +=  kritalibbrush             52.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           52.0 # 0.0
SHARED_LIBS +=  kritaui                   56.0 # 0.0

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

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krita/${VERSION}/}
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
			x11/qt5/qtmultimedia \
			x11/qt5/qtdeclarative

BUILD_DEPENDS +=	math/eigen3 \
			net/curl \
			devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			devel/gettext-tools

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SIP:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_PyQt5:Bool=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
