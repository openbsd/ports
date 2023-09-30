COMMENT =	USB Chip/Smart Card Interface Devices driver

DISTNAME =	ccid-1.5.2

CATEGORIES =	security

HOMEPAGE =	https://ccid.apdu.fr/

SITES =		https://ccid.apdu.fr/files/

EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =	pcsclite pthread usb-1.0

LIB_DEPENDS =	devel/libusb1 \
		security/pcsc-lite>=1.8.3

# atomics
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --enable-twinserial

CONFIGURE_ENV =	ac_cv_lib_lex='none needed'

NO_TEST =	Yes

.include <bsd.port.mk>
