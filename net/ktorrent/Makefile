USE_WXNEEDED =	Yes

COMMENT =	BitTorrent Client

DISTNAME =	ktorrent-${MODKDE_GEAR_VERSION}

SHARED_LIBS +=  ktcore                    3.0 # 0.0

CATEGORIES =	net

HOMEPAGE =	https://apps.kde.org/ktorrent/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6DNSSD KF6GlobalAccel
WANTLIB += KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6NotifyConfig
WANTLIB += KF6Parts KF6Plotting KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6StatusNotifierItem KF6Syndication KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KTorrent6
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 c gcrypt gmp m maxminddb phonon4qt6
WANTLIB += tag

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MODULES =		x11/kde

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/boost

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/taglib \
			devel/gmp \
			devel/kf6/karchive \
			devel/kf6/kbookmarks \
			devel/kf6/kcmutils \
			devel/kf6/kcolorscheme \
			devel/kf6/kcompletion \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kcrash \
			devel/kf6/kdbusaddons \
			devel/kf6/kdnssd \
			devel/kf6/kglobalaccel \
			devel/kf6/ki18n \
			devel/kf6/kiconthemes \
			devel/kf6/kio \
			devel/kf6/kitemviews \
			devel/kf6/kjobwidgets \
			devel/kf6/knotifications \
			devel/kf6/knotifyconfig \
			devel/kf6/kparts \
			devel/kf6/kplotting \
			devel/kf6/kservice \
			devel/kf6/kstatusnotifieritem \
			devel/kf6/ktextwidgets \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kwindowsystem \
			devel/kf6/kxmlgui \
			devel/kf6/solid \
			devel/kf6/sonnet \
			devel/kf6/syndication \
			multimedia/phonon,qt6 \
			net/libktorrent>=${MODKDE_GEAR_VERSION} \
			net/libmaxminddb \
			security/libgcrypt \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_LibKWorkspace=ON

.include <bsd.port.mk>
