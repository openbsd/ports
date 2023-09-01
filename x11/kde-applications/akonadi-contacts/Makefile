COMMENT =	PIM Akonadi contacts support library
DISTNAME =	akonadi-contacts-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5AkonadiContact       1.0 # 0.0
SHARED_LIBS +=  KPim5ContactEditor        1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5I18n
WANTLIB += KF5I18nLocaleData KF5IconThemes KF5ItemModels KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Prison KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPim5AkonadiCore KPim5AkonadiWidgets
WANTLIB += KPim5GrantleeTheme KPim5Mime Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kcmutils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/sonnet \
		x11/grantlee-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
