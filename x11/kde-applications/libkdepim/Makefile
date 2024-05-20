COMMENT =	library for common kdepim apps
DISTNAME =	libkdepim-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6Libkdepim            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6I18n KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Gui Qt6Widgets m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kauth \
		devel/kf6/kcodecs \
		devel/kf6/kconfigwidgets \
		devel/kf6/kitemviews \
		devel/kf6/kcoreaddons \
		devel/kf6/kjobwidgets \
		x11/qt6/qttools

LIB_DEPENDS =	devel/kf6/kcompletion \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
