COMMENT =	sound channel mixer and volume control
DISTNAME =	kmix-${VERSION}
CATEGORIES =	audio

HOMEPAGE =	https://apps.kde.org/kmix

SHARED_LIBS +=  kmixcore                4.0 # 5.13.80

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6I18n KF6Notifications
WANTLIB += KF6Solid KF6StatusNotifierItem KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Widgets Qt6Xml
WANTLIB += X11 c canberra m sndio

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kcrash
RUN_DEPENDS =	devel/kf6/kcrash

LIB_DEPENDS +=	audio/libcanberra \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid

.include <bsd.port.mk>
