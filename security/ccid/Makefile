# $OpenBSD: Makefile,v 1.31 2019/11/17 13:11:58 kn Exp $

COMMENT =	USB Chip/Smart Card Interface Devices driver

V =		1.4.30
DISTNAME =	ccid-${V}

CATEGORIES =	security

HOMEPAGE =	https://ccid.apdu.fr/

MASTER_SITES =	https://ccid.apdu.fr/files/

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
