PKG_ARCH=		*

COMMENT=	ARM Trusted Firmware

VERSION=	2.10.2
PKGNAME=	arm-trusted-firmware-${VERSION}

GH_ACCOUNT=	ARM-software
GH_PROJECT=	arm-trusted-firmware
GH_TAGNAME=	lts-v${VERSION}

REVISION=	0
EPOCH=		0

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,aarch64
BUILD_DEPENDS+= devel/arm-none-eabi/gcc,arm

MAKE_ENV+= CROSS_COMPILE="aarch64-none-elf-"
MAKE_ENV+= BUILD_STRING="${GH_TAGNAME:S/v//}"

NO_TEST=	Yes
USE_GMAKE=	Yes

# Disable passing CFLAGS to allow the build to use various
# optimization levels. Allowing ports to override CFLAGS
# causes the build to fail.
CFLAGS=

PLATFORMS=\
	rk3328 \
	rk3399 \
	sun50i_a64 \
	sun50i_h6 \
	sun50i_h616

do-build:
.for P in ${PLATFORMS}
.  if "$P" == "sun50i_h6"
	# ATF's Makefile looks not easy to tweak, rename directory name that
	# stores compiled objects. First, make with SUNXI_SETUP_REGULATORS=0.
	rm -rf ${WRKBUILD}/build/sun50i_h6.noreg
	cd ${WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    V=1 PLAT=${P} DEBUG=0 SUNXI_SETUP_REGULATORS=0 bl31
	mv ${WRKBUILD}/build/sun50i_h6 ${WRKBUILD}/build/sun50i_h6.noreg

	# Second, make default (SUNXI_SETUP_REGULATORS=1).
	# (FALLTHROUGH)
.  endif
	cd ${WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    V=1 PLAT=${P} DEBUG=0 bl31
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arm-trusted-firmware/
	${INSTALL_DATA} ${WRKBUILD}/build/rk3328/release/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3328-bl31.elf
	${INSTALL_DATA} ${WRKBUILD}/build/rk3399/release/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3399-bl31.elf
	${INSTALL_DATA} ${WRKBUILD}/build/sun50i_a64/release/bl31.bin \
	    ${PREFIX}/share/arm-trusted-firmware/sun50i_a64-bl31.bin
	${INSTALL_DATA} ${WRKBUILD}/build/sun50i_h6/release/bl31.bin \
	    ${PREFIX}/share/arm-trusted-firmware/sun50i_h6-bl31.bin
	${INSTALL_DATA} ${WRKBUILD}/build/sun50i_h6.noreg/release/bl31.bin \
	    ${PREFIX}/share/arm-trusted-firmware/sun50i_h6-bl31-noreg.bin
	${INSTALL_DATA} ${WRKBUILD}/build/sun50i_h616/release/bl31.bin \
	    ${PREFIX}/share/arm-trusted-firmware/sun50i_h616-bl31.bin

.include <bsd.port.mk>
