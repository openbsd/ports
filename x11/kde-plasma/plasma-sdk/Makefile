COMMENT =	applications useful for Plasma development
DISTNAME =	plasma-sdk-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5Declarative KF5I18n
WANTLIB += KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Package KF5Parts KF5Plasma KF5PlasmaQuick KF5QuickAddons
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets Qt5Xml X11
WANTLIB += c m

MODKDE5_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/kf5/kirigami2
RUN_DEPENDS =	devel/kf5/kirigami2 \
		devel/desktop-file-utils

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		x11/qt5/qtdeclarative


CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=		-I${LOCALBASE}/include/
CXXFLAGS +=		-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
