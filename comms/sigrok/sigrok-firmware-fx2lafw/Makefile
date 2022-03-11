COMMENT =		firmware for FX2 logic analyzers

SIGROK_PROJECT =	sigrok-firmware-fx2lafw-bin
SIGROK_VERSION =	0.1.7

PKGNAME =		sigrok-firmware-fx2lafw-${SIGROK_VERSION}
MASTER_SITES =		https://sigrok.org/download/binary/sigrok-firmware-fx2lafw/

CONFIGURE_STYLE =
NO_BUILD =		Yes
NO_TEST =		Yes

FIX_EXTRACT_PERMISSIONS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sigrok-firmware
	${INSTALL_DATA} ${WRKSRC}/*.fw ${PREFIX}/share/sigrok-firmware

PKG_ARCH =		*

.include <bsd.port.mk>
