COMMENT =	core components for the KDE Activity concept

DISTNAME =	kactivitymanagerd-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5I18n KF5KIOCore KF5Service
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml X11 c m

MODKDE5_TRANSLATIONS =	Yes

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
