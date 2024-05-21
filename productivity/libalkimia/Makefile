USE_WXNEEDED =	Yes

COMMENT =	KDE financial data handling library

CATEGORIES =	productivity x11

V =		8.1.2
PKGNAME =	libalkimia-$V
DISTNAME =	alkimia-$V

SHARED_LIBS =  alkimia5  2.0 # 8.0.4

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 c gmp m

HOMEPAGE =	https://community.kde.org/Alkimia/libalkimia

SITES =		${SITE_KDE:=stable/alkimia/$V/}
EXTRACT_SUFX =	.tar.xz

# LGPLv2.1+
PERMIT_PACKAGE = Yes

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gmp,-cxx \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gmp,-cxx \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/gmp \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# Build plasma applets
CONFIGURE_ARGS =	-DBUILD_APPLETS=OFF

.include <bsd.port.mk>
