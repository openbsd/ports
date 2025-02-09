COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${VERSION}
CATEGORIES =	graphics devel

SHARED_LIBS +=	KSaneWidgets6             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6I18n KF6SonnetUi KF6TextWidgets
WANTLIB += KF6Wallet KF6WidgetsAddons KSaneCore6 Qt6Core Qt6Gui
WANTLIB += Qt6Widgets m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/ki18n \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/sonnet \
		x11/kde-applications/kf6-ksanecore>=${MODKDE_GEAR_VERSION}

.include <bsd.port.mk>
