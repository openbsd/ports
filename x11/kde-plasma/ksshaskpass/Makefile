COMMENT =	KDE Plasma ssh-add helper
DISTNAME =	ksshaskpass-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6Wallet
WANTLIB += KF6WidgetsAddons Qt6Core Qt6Gui Qt6Widgets c m

MODKDE5_TRANSLATIONS =	Yes

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
