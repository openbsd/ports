COMMENT =	widgets for Baloo
DISTNAME =	baloo-widgets-${VERSION}
PKGNAME =	kf6-baloo-widgets-${VERSION}
CATEGORIES =	devel x11

SHARED_LIBS +=	KF6BalooWidgets           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Baloo KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6FileMetaData KF6I18n
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service
WANTLIB += KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Widgets c m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/baloo \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/solid \
		devel/kf6/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
