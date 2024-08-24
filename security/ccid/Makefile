COMMENT =	USB Chip/Smart Card Interface Devices driver

DISTNAME =	ccid-1.6.1

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

CONFIGURE_ARGS = -Dserial=true

NO_TEST =	Yes

post-install:
	mv {${WRKINST}${SYSCONFDIR},${PREFIX}/share/examples}/reader.conf.d

.include <bsd.port.mk>
