COMMENT =	libraries provides gravatar support
DISTNAME =	libgravatar-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6Gravatar             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6WidgetsAddons KPim6PimCommon
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		 \
		devel/kf6/kwidgetsaddons \
		 \
		textproc/ktextaddons \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
