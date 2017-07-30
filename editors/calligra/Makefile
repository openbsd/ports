# $OpenBSD: Makefile,v 1.24 2017/07/30 16:53:54 espie Exp $

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	https://www.calligra-suite.org/
VERSION =	3.0.1
DISTNAME =	calligra-${VERSION}
CATEGORIES =	editors
REVISION =	4

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=stable/calligra/${VERSION}/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes
DPB_PROPERTIES =	parallel

MODULES =	devel/kf5 \
		multimedia/phonon

SHARED_LIBS =   RtfReader                 50.0 # 0.0
SHARED_LIBS +=  basicflakes               50.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      50.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         50.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      50.0 # 0.0
SHARED_LIBS +=  flake                     50.0 # 0.0
SHARED_LIBS +=  karboncommon              50.0 # 0.0
SHARED_LIBS +=  karbonui                  50.0 # 0.0
SHARED_LIBS +=  komain                    50.0 # 0.0
SHARED_LIBS +=  komsooxml                 50.0 # 13.0
SHARED_LIBS +=  koodf                     50.0 # 0.0
SHARED_LIBS +=  koodf2                    50.0 # 13.0
SHARED_LIBS +=  koodfreader               50.0 # 13.0
SHARED_LIBS +=  kopageapp                 50.0 # 0.0
SHARED_LIBS +=  koplugin                  50.0 # 0.0
SHARED_LIBS +=  kotext                    50.0 # 0.0
SHARED_LIBS +=  kotextlayout              50.0 # 13.0
SHARED_LIBS +=  kovectorimage             50.0 # 13.0
SHARED_LIBS +=  koversion                 0.0 # 14.0
SHARED_LIBS +=  kowidgets                 50.0 # 0.0
SHARED_LIBS +=  kowidgetutils             50.0 # 0.0
SHARED_LIBS +=  kowv2                     50.0 # 0.0
SHARED_LIBS +=  kundo2                    50.0 # 0.0
SHARED_LIBS +=  pigmentcms                50.0 # 0.0
SHARED_LIBS +=  wordsprivate              14.0 # 1.0
SHARED_LIBS +=  koformula                 15.0 # 1.0
SHARED_LIBS +=  kostore                   15.0 # 1.0
SHARED_LIBS +=  kdeinit5_calligrasheets   0.0 # 0.0
SHARED_LIBS +=  kdeinit5_calligrawords    0.0 # 0.0
SHARED_LIBS +=  kdeinit5_karbon           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Half ICE Iex IlmImf IlmThread Imath KF5Activities KF5Archive
WANTLIB += KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KCMUtils KF5KDELibs4Support
WANTLIB += KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5NotifyConfig KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5Sql Qt5Svg Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext c fontconfig
WANTLIB += freetype gsl iconv jpeg lcms2 m openjpeg phonon4qt5experimental
WANTLIB += poppler poppler-qt5 pthread z

BUILD_DEPENDS +=devel/boost \
		math/eigen3 \
		productivity/librcps \
		devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/threadweaver \
		devel/kf5/kross

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/gettext \
		devel/kf5/ktexteditor \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+3,-guic

LIB_DEPENDS +=	x11/qt5/qtwebkit \
		converters/libiconv \
		graphics/openexr \
		devel/kf5/karchive \
		devel/kf5/kcodecs\
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons\
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/ktextwidgets \
		devel/kf5/sonnet \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/knotifications \
		devel/kf5/kactivities \
		devel/kf5/knotifyconfig \
		devel/kf5/kcmutils \
		devel/kf5/khtml \
		devel/gsl \
		graphics/jpeg \
		graphics/openjpeg \
		graphics/lcms2 \
		print/poppler,,-qt5

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy:BOOL=Off \
			-DWITH_Libgit2:BOOL=Off \
			-DWITH_Libqgit2:BOOL=Off \
			-DWITH_LibEtonyek:BOOL=Off \
			-DWITH_LibOdfGen:BOOL=Off \
			-DWITH_LibVisio:BOOL=Off \
			-DWITH_LibWpg:BOOL=Off \
			-DWITH_LibWps:BOOL=Off \
			-DWITH_Spnav:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
