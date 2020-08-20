# $OpenBSD: Makefile,v 1.44 2020/08/20 18:00:14 rsadowski Exp $

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	https://www.calligra.org
VERSION =	3.2.1
DISTNAME =	calligra-${VERSION}
CATEGORIES =	editors
REVISION =	0

SHARED_LIBS =   RtfReader                 51.0 # 0.0
SHARED_LIBS +=  basicflakes               50.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      51.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         51.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      51.0 # 0.0
SHARED_LIBS +=  flake                     52.0 # 0.0
SHARED_LIBS +=  karboncommon              50.0 # 0.0
SHARED_LIBS +=  karbonui                  51.0 # 0.0
SHARED_LIBS +=  komain                    52.0 # 0.0
SHARED_LIBS +=  komsooxml                 51.0 # 13.0
SHARED_LIBS +=  koodf                     51.0 # 0.0
SHARED_LIBS +=  koodf2                    51.0 # 13.0
SHARED_LIBS +=  koodfreader               50.0 # 13.0
SHARED_LIBS +=  kopageapp                 51.0 # 0.0
SHARED_LIBS +=  koplugin                  50.0 # 0.0
SHARED_LIBS +=  kotext                    52.0 # 0.0
SHARED_LIBS +=  kotextlayout              51.0 # 13.0
SHARED_LIBS +=  kovectorimage             51.0 # 13.0
SHARED_LIBS +=  koversion                 0.0 # 14.0
SHARED_LIBS +=  kowidgets                 51.0 # 0.0
SHARED_LIBS +=  kowidgetutils             51.0 # 0.0
SHARED_LIBS +=  kowv2                     51.0 # 0.0
SHARED_LIBS +=  kundo2                    52.0 # 0.0
SHARED_LIBS +=  pigmentcms                50.0 # 0.0
SHARED_LIBS +=  wordsprivate              15.0 # 1.0
SHARED_LIBS +=  koformula                 15.0 # 1.0
SHARED_LIBS +=  kostore                   16.0 # 1.0
SHARED_LIBS +=  kdeinit5_calligrasheets   0.0 # 0.0
SHARED_LIBS +=  kdeinit5_calligrawords    0.0 # 0.0
SHARED_LIBS +=  kdeinit5_karbon           0.0 # 0.0
SHARED_LIBS +=  gemini                    0.0 # 16.0
SHARED_LIBS +=  kookularGenerator_odt     0.0 # 17.0
SHARED_LIBS +=  kookularGenerator_odp     0.0 # 17.0

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=stable/calligra/${VERSION}/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes
DPB_PROPERTIES =	parallel

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 ICE Iex-2_5 IlmImf-2_5
WANTLIB += IlmThread-2_5 Imath-2_5 KChart KF5Activities KF5Archive
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JS KF5JobWidgets KF5KCMUtils KF5KDELibs4Support
WANTLIB += KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5NotifyConfig KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Okular5Core Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml SM X11
WANTLIB += Xext c fontconfig freetype gsl gslcblas iconv lcms2
WANTLIB += m phonon4qt5 phonon4qt5experimental poppler poppler-qt5
WANTLIB += qca-qt5 z

MODULES =	devel/kf5

# c++-14
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf5/kdoctools \
		devel/kf5/kross \
		devel/kf5/threadweaver \
		math/eigen3 \
		productivity/librcps

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		devel/kf5/ktexteditor \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+3,-guic

LIB_DEPENDS =	converters/libiconv \
		devel/gsl \
		devel/kf5/kactivities \
		devel/kf5/karchive \
		devel/kf5/kcalendarcore \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs\
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kguiaddons\
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		graphics/kdiagram \
		graphics/lcms2 \
		graphics/openexr \
		multimedia/phonon \
		print/poppler,-qt5 \
		security/qca-qt5 \
		textproc/libwpd \
		x11/kde-applications/okular \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy=OFF \
			-DWITH_Libgit2=OFF \
			-DWITH_LibEtonyek=OFF \
			-DWITH_LibOdfGen=OFF \
			-DWITH_LibVisio=OFF \
			-DWITH_LibWpg=OFF \
			-DWITH_LibWps=OFF \
			-DWITH_Spnav=OFF

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

pre-configure:
	find ${WRKSRC} -type f \( -name \*.cpp -o -name \*.h \) -exec \
		sed -i -e 's,#include <phonon,#include <phonon4qt5/phonon,g' {} +

.include <bsd.port.mk>
