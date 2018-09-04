# $OpenBSD: Makefile,v 1.3 2018/09/04 12:46:09 espie Exp $

COMMENT =	library for communicating with USB and Bluetooth HID devices

V =		0.8.0pre20160128
DISTNAME =	libhidapi-${V}
REVISION =	0

GH_ACCOUNT =	signal11
GH_PROJECT =	hidapi
GH_COMMIT =	a6a622ffb680c55da0de787ff93b80280498330f

#libhidapi is symlink to hidapi-libusb. Same version numbers should be kept.
SHARED_LIBS +=  hidapi-libusb		0.0 # 0.0
SHARED_LIBS +=  hidapi			0.0 # 0.0

CATEGORIES =	comms

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3, BSD-style, or more liberal original HIDAPI license
# chosen at the discretion of the user of HIDAPI
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += iconv pthread usb-1.0

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS =	converters/libiconv \
		devel/libusb1

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/libusb-1.0 \
				-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lusb-1.0 -liconv"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

pre-configure:
	cd ${WRKSRC} && env -i \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		PATH=${PORTPATH} \
		autoreconf -fi
post-install:
	cd ${PREFIX}/lib && \
		ln -sf libhidapi-libusb.so.${LIBhidapi-libusb_VERSION} \
			libhidapi.so.${LIBhidapi-libusb_VERSION}

.include <bsd.port.mk>
