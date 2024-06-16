COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${VERSION}
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/utilities/kmag/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6PrintSupport Qt6Widgets Qt6Xml
WANTLIB += c m qaccessibilityclient-qt6

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes
MODKDE5_DESKTOP_FILE = yes

BUILD_DEPENDS =		x11/qt6/qtmultimedia
RUN_DEPENDS =		x11/qt6/qtmultimedia

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/libqaccessibilityclient

.include <bsd.port.mk>
