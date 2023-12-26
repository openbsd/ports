COMMENT =	KDE Plasma add-ons
DISTNAME =	kdeplasma-addons-${VERSION}
PKGNAME =	kdeplasma-addons-kf5-${VERSION}

SHARED_LIBS +=  plasmapotdprovidercore    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5CalendarEvents
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Holidays KF5I18n
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5Package
WANTLIB += KF5Plasma KF5Runner KF5Service KF5Solid KF5SonnetCore
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngine Qt5WebEngineCore Qt5Widgets Qt5Xml X11
WANTLIB += icui18n icuuc m

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE = Yes

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=	-I${LOCALBASE}/include/
CXXFLAGS +=	-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
