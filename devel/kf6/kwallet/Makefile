UNLINKED = kf6
COMMENT =	KDE safe desktop-wide storage for passwords
DISTNAME =	kwallet-${VERSION}

SHARED_LIBS +=  KF6Wallet                 0.0 # 0.0
SHARED_LIBS +=  KF6WalletBackend          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6CoreAddons KF6DBusAddons KF6I18n KF6Notifications
WANTLIB += KF6WidgetsAddons KF6WindowSystem Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Widgets X11 c gcrypt m qca-qt6

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kdbusaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/knotifications>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kwindowsystem>=${MODKF6_VERSION} \
		security/libgcrypt \
		security/qca-qt6

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Gpgmepp=ON

.include <bsd.port.mk>
