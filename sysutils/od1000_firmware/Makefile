COMMENT=	firmware and flash tool for SOFTIRON OverDrive 1000

DISTNAME=	overdrive_1000_firmware-1.02-2017-01-19
PKGNAME=	od1000_firmware-1.02.20170119
REVISION=	1

CATEGORIES=	sysutils

HOMEPAGE=	https://support.softiron.com/

# tools: BSD
# UEFI firmware (Tianocore EDK2, Linaro OpenPlatformPkg): BSD
# PIC32 firmware: unknown - @comment'ed in PLIST for now.
# - revisit if it ever gets an update from 1.02.
PERMIT_PACKAGE=	Yes

WANTLIB += c usb-1.0

MASTER_SITES=	https://s3.amazonaws.com/cdn.softiron.com/

LIB_DEPENDS=	devel/libusb1

USE_GMAKE=	Yes

NO_TEST=	Yes

MAKE_FLAGS=	COPTFLAGS="${CFLAGS}"

do-build:
	cd ${WRKSRC}/flasher && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
	cd ${WRKSRC}/bootloader && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/od1000_firmware
.for i in flasher bootloader
	${INSTALL_PROGRAM} ${WRKSRC}/$i/$i ${PREFIX}/bin/od1000_$i
.endfor
	cd ${WRKSRC}; ${INSTALL_DATA} OVERDRIVE1000_ROM.fd README.txt \
	    od1000_eeprom.bin pic32_firmware.hex ${PREFIX}/share/od1000_firmware

.include <bsd.port.mk>
