COMMENT =	certificate manager for KDE
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	security devel

SHARED_LIBS +=	KPim6Libkleo              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6I18n KF6ItemModels
WANTLIB += KF6TextCustomEditor KF6WidgetsAddons Qt6Core Qt6Gui
WANTLIB += Qt6Widgets assuan gpg-error gpgme gpgmepp m qgpgmeqt6

MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/kwidgetsaddons \
		security/gpgme,-qt \
		security/libassuan \
		security/libgpg-error \
		textproc/ktextaddons \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION}

.include <bsd.port.mk>
