# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:48 sthen Exp $

COMMENT=	software to turn RTL2832U into an SDR

DISTNAME=	rtl-sdr-0.20130412
REVISION=	2

SHARED_LIBS=	rtlsdr 0.0

CATEGORIES=	comms

HOMEPAGE=	http://sdr.osmocom.org/trac/wiki/rtl-sdr

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread usb-1.0

# http://cgit.osmocom.org/rtl-sdr
MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	devel/cmake
LIB_DEPENDS=	devel/libusb1

NO_TEST=	Yes

# rtl_tcp, rtl_adsb and rtl_fm require asynchronous mode which is
# not currently working. additionally, rtl_adsb and rtl_fm have mutex
# issues (unlocking already-unlocked mutex). other programs have been
# patched to force synchronous mode.   update DESCR if fixing these.
post-install:
	cd ${PREFIX}/bin && rm rtl_adsb rtl_tcp

.include <bsd.port.mk>
