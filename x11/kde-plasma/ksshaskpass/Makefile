COMMENT =	KDE Plasma ssh-add helper
DISTNAME =	ksshaskpass-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6WidgetsAddons
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Widgets c m qt6keychain

MODKDE_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		security/qtkeychain,qt6

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
