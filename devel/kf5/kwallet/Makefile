COMMENT =		KDE safe desktop-wide storage for passwords
DISTNAME =		kwallet-${VERSION}
PKGNAME =		kf5-kwallet-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Wallet		7.0
SHARED_LIBS +=		kwalletbackend5		6.1

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5Notifications KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += X11 c gcrypt m qca-qt5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		security/qca-qt5 \
		security/libgcrypt

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Gpgmepp=ON

# https://community.kde.org/Frameworks/6.0_Release_notes
CONFIGURE_ARGS +=	-DBUILD_KWALLETD=OFF \
			-DBUILD_KWALLET_QUERY=OFF

.include <bsd.port.mk>
