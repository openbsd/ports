COMMENT =	KDE Plasma ssh-add helper
DISTNAME =	ksshaskpass-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5Wallet
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets c m

MODKDE5_TRANSLATIONS =	Yes

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
