COMMENT =		KDE safe desktop-wide storage for passwords
DISTNAME =		kwallet-${VERSION}
PKGNAME =		kf5-kwallet-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Wallet		7.0
SHARED_LIBS +=		kwalletbackend5		6.1

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5WindowSystem Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets X11 m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Gpgmepp=ON

# https://community.kde.org/Frameworks/6.0_Release_notes
CONFIGURE_ARGS +=	-DBUILD_KWALLETD=OFF \
			-DBUILD_KWALLET_QUERY=OFF

.include <bsd.port.mk>
