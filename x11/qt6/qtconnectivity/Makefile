QT6NAME =	QtConnectivity
COMMENT =	Bluetooth and NFC support for Qt6
PKGSPEC =	qt6-qtconnectivity-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Bluetooth              2.0 # 6.7
SHARED_LIBS +=  Qt6Nfc                    2.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network c m pcsclite

LIB_DEPENDS =	security/pcsc-lite

.include <bsd.port.mk>
