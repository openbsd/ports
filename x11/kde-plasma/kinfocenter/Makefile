COMMENT =	core components for the KDE Activity concept
DISTNAME =	kinfocenter-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Package KF5QuickAddons KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Widgets Qt5Xml X11 c m usb-1.0

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes

BUILD_DEPENDS =		devel/boost

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/dbus,-suid

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcmutils \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/libusb1 \
			x11/qt5/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
