COMMENT =	library for common kdepim apps
DISTNAME =	libkdepim-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5Libkdepim            1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5I18n KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Widgets m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfigwidgets \
		devel/kf5/kitemviews \
		devel/kf5/kcoreaddons \
		devel/kf5/kjobwidgets \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
