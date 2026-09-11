COMMENT =	digital travel assistant
DISTNAME =	itinerary-${VERSION}
CATEGORIES =	x11 sysutils

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ConfigCore
WANTLIB += KF6Contacts KF6CoreAddons KF6Crash KF6DBusAddons KF6FileMetaData
WANTLIB += KF6Holidays KF6I18n KF6I18nLocaleData KF6I18nQml KF6KIOCore
WANTLIB += KF6KIOGui KF6Mime KF6Notifications KF6Service KF6UnitConversion
WANTLIB += KF6WindowSystem KOSM KOSMIndoorMap KPim6Itinerary KPim6PkPass
WANTLIB += KPublicTransport KPublicTransportOnboard QCoro6Core
WANTLIB += QCoro6Network Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Sql
WANTLIB += Qt6Widgets QuotientQt6 X11 c m olm qt6keychain z

HOMEPAGE =	https://apps.kde.org/itinerary/

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS = devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kirigami \
		devel/kf6/kitemmodels \
		devel/kf6/prison \
		graphics/kirigami-addons

RUN_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/qqc2-desktop-style \
		graphics/kirigami-addons \
		x11/kde-plasma/plasma-integration \
		x11/qt6/qtlocation

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kconfig \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kmime \
		devel/kf6/kunitconversion \
		devel/kf6/kwindowsystem \
		devel/qcoro \
		devel/olm \
		security/qtkeychain,qt6 \
		x11/kde-applications/kitinerary>=${VERSION} \
		x11/kde-applications/kosmindoormap>=${VERSION} \
		x11/kde-applications/kpkpass>=${VERSION} \
		x11/kde-applications/kpublictransport>=${VERSION} \
		x11/libquotient \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
