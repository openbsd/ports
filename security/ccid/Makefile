# $OpenBSD: Makefile,v 1.30 2019/07/12 21:02:24 sthen Exp $

COMMENT =	USB Chip/Smart Card Interface Devices driver

DISTNAME =	ccid-1.4.27

CATEGORIES =	security

REVISION =	1

HOMEPAGE =	https://pcsclite.apdu.fr/

MASTER_SITES =	https://alioth-archive.debian.org/releases/pcsclite/ccid/

EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =	pcsclite pthread usb-1.0

LIB_DEPENDS =	devel/libusb1 \
		security/pcsc-lite>=1.8.3


CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --enable-twinserial

CONFIGURE_ENV =	ac_cv_lib_lex='none needed'

NO_TEST =	Yes

.include <bsd.port.mk>
