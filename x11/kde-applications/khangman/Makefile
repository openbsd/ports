COMMENT =	KDE hangman game
DISTNAME =	khangman-${VERSION}

CATEGORIES =	games education

WANTLIB += ${COMPILER_LIBCXX} GL KEduVocDocument KF6Attica KF6ConfigCore
WANTLIB += KF6CoreAddons KF6Crash KF6I18n KF6NewStuffCore KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6Qml Qt6Widgets Qt6Xml
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/knewstuff \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/libkeduvocdocument>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
