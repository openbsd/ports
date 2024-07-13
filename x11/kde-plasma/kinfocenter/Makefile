COMMENT =	core components for the KDE Activity concept
DISTNAME =	kinfocenter-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets c m usb-1.0

MODKDE_TRANSLATIONS = Yes
MODKDE_DOCS = Yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		devel/libusb1 \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
