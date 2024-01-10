COMMENT=	software to turn RTL2832U into an SDR

GH_ACCOUNT =	osmocom
GH_PROJECT =	rtl-sdr
GH_TAGNAME =	v2.0.1

SHARED_LIBS=	rtlsdr 0.2

CATEGORIES=	comms

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>
HOMEPAGE=	https://osmocom.org/projects/rtl-sdr/wiki

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread usb-1.0

MODULES=	devel/cmake
LIB_DEPENDS=	devel/libusb1

MODCMAKE_LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS += -DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
