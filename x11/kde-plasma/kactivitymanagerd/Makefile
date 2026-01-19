COMMENT =	core components for the KDE Activity concept

DISTNAME =	kactivitymanagerd-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6GuiAddons KF6I18n KF6KIOCore
WANTLIB += KF6Service KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Sql Qt6Widgets Qt6Xml c m

MODKDE_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kservice \
		devel/kf6/kguiaddons \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
