COMMENT =	widgets for Baloo
DISTNAME =	baloo-widgets-${VERSION}
PKGNAME =	baloo-widgets-kf5-${VERSION}
CATEGORIES =	devel x11

SHARED_LIBS +=  KF5BalooWidgets       1.0 # 19.12.3

WANTLIB += ${COMPILER_LIBCXX} KF5Baloo KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5CoreAddons KF5FileMetaData KF5I18n
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += X11 c m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/baloo \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
