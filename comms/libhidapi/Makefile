COMMENT =	library for communicating with USB and Bluetooth HID devices

# XXX Any consumer should be patched to use hidapi_hid_init() instead of
# hid_init(3) to avoid conflict with base usbhid(3).

V =		0.13.1
DISTNAME =	libhidapi-${V}

GH_ACCOUNT =	libusb
GH_PROJECT =	hidapi
GH_TAGNAME =	hidapi-${V}

#libhidapi is symlink to hidapi-libusb. Same version numbers should be kept.
SHARED_LIBS +=	hidapi-libusb		1.0 # 0.0
SHARED_LIBS +=	hidapi			1.0 # 0.0

CATEGORIES =	comms

# GPLv3, BSD-style, or more liberal original HIDAPI license
# chosen at the discretion of the user of HIDAPI
PERMIT_PACKAGE =	Yes

WANTLIB += iconv pthread usb-1.0

LIB_DEPENDS =	converters/libiconv \
		devel/libusb1

MODULES =	devel/cmake

DOCDIR =	${PREFIX}/share/doc/hidapi

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE* README.md AUTHORS.txt ${DOCDIR}/
	ln -sf libhidapi-libusb.so.${LIBhidapi-libusb_VERSION} \
		${PREFIX}/lib/libhidapi.so.${LIBhidapi-libusb_VERSION}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
