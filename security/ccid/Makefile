COMMENT =	USB Chip/Smart Card Interface Devices driver

# portroach only identifies the previous release on https://ccid.apdu.fr/files/
PORTROACH =	https://github.com/LudovicRousseau/CCID/releases/
DISTNAME =	ccid-1.8.0

CATEGORIES =	security

HOMEPAGE =	https://ccid.apdu.fr/

SITES =		https://ccid.apdu.fr/files/
EXTRACT_SUFX =	.tar.xz

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =	pcsclite usb-1.0

MODULES =	devel/meson

LIB_DEPENDS =	devel/libusb1 \
		security/pcsc-lite>=1.8.3

# atomics
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CONFIGURE_ARGS = -Dserial=true \
		 -Dudev-rules=false

NO_TEST =	Yes

post-install:
	mv {${WRKINST}${SYSCONFDIR},${PREFIX}/share/examples}/ccid

.include <bsd.port.mk>
