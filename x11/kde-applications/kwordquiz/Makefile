COMMENT =	general purpose flash card program for KDE
DISTNAME =	kwordquiz-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kwordquiz

WANTLIB += ${COMPILER_LIBCXX} GL KEduVocDocument KF6Attica KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6Crash KF6DBusAddons KF6I18n
WANTLIB += KF6NewStuffCore Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += c m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	graphics/kirigami-addons

RUN_DEPENDS =	graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/knewstuff \
		devel/kf6/kdbusaddons \
		x11/kde-applications/libkeduvocdocument>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

.include <bsd.port.mk>
