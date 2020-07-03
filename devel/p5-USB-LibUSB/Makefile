# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:19 sthen Exp $

COMMENT =	perl interface to the libusb-1.0 API

DISTNAME =	USB-LibUSB-0.09
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl usb-1.0

MODULES =		cpan

LIB_DEPENDS =		devel/libusb1
RUN_DEPENDS =		devel/p5-Moo

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
