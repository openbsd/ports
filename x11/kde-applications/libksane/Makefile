COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${VERSION}
PKGNAME =	libksane-kf5-${VERSION}
CATEGORIES =	graphics devel

MODKDE_KF5 =	Yes

SHARED_LIBS +=  KF5Sane                   4.0 # 5.1

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KSaneCore Qt5Core Qt5Gui
WANTLIB += Qt5Widgets m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/sonnet \
		x11/kde-applications/ksanecore>=${MODKDE_VERSION}

.include <bsd.port.mk>
