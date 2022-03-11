COMMENT =	library for communicating with USB and Bluetooth HID devices

# XXX Any consumer should be patched to use hidapi_hid_init() instead of
# hid_init(3) to avoid conflict with base usbhid(3).

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
PERMIT_PACKAGE =	Yes

WANTLIB += iconv pthread usb-1.0

LIB_DEPENDS =	converters/libiconv \
		devel/libusb1

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/libusb-1.0 \
				-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lusb-1.0 -liconv"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

post-install:
	cd ${PREFIX}/lib && \
		ln -sf libhidapi-libusb.so.${LIBhidapi-libusb_VERSION} \
			libhidapi.so.${LIBhidapi-libusb_VERSION}

.include <bsd.port.mk>
