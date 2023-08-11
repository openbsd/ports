BROKEN-sparc64=	Error: the specified option is not accepted in ISB at operand 1 -- isb sy
BROKEN-arm=	lib/time.c:187:1: internal compiler error: Bus error

DPB_PROPERTIES=	parallel

COMMENT=	U-Boot firmware
DISTNAME=	u-boot-${VERSION}
PKGNAME=	u-boot-${SOC}-${VERSION:S/-//}
FULLPKGNAME=	${PKGNAME}
CATEGORIES=	sysutils
HOMEPAGE=	https://www.denx.de/wiki/U-Boot

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://ftp.denx.de/pub/u-boot/
EXTRACT_SUFX=	.tar.bz2
PKG_ARCH=	*

BUILD_DEPENDS=	devel/bison \
		devel/dtc \
		devel/swig

# for pkg_resources used in tools/binman/control.py
BUILD_DEPENDS+=	devel/py-setuptools${MODPY_FLAVOR}

MODULES=	lang/python
MODPY_RUNDEP=	No

MODPY_ADJ_FILES=\
	arch/arm/mach-rockchip/make_fit_atf.py

MAKE_ENV=	KBUILD_VERBOSE=1 \
		PYTHON="${MODPY_BIN}"

.if "${SOC_CPU}" == "arm64"
BUILD_DEPENDS+=	devel/arm-none-eabi/gcc,aarch64 \
		devel/py-elftools${MODPY_FLAVOR} \
		sysutils/arm-trusted-firmware>=2.2p0v0
MAKE_ENV+=	CROSS_COMPILE="aarch64-none-elf-"
RK3328_BL31=	"${LOCALBASE}/share/arm-trusted-firmware/rk3328-bl31.elf"
RK3399_BL31=	"${LOCALBASE}/share/arm-trusted-firmware/rk3399-bl31.elf"
SUNXI_BL31=	"${LOCALBASE}/share/arm-trusted-firmware/sun50i_a64-bl31.bin"
SUNXI_H6_BL31=	"${LOCALBASE}/share/arm-trusted-firmware/sun50i_h6-bl31.bin"
.elif "${SOC_CPU}" == "arm"
BUILD_DEPENDS+=	devel/arm-none-eabi/gcc,arm
MAKE_ENV+=	CROSS_COMPILE="arm-none-eabi-"
.elif "${SOC_CPU}" == "riscv64"
BUILD_DEPENDS+= devel/riscv-elf/gcc \
		sysutils/opensbi>=0.9p0
MAKE_ENV+=	CROSS_COMPILE="riscv64-unknown-elf-"
FW_DYNAMIC=	"${LOCALBASE}/share/opensbi/generic/fw_dynamic.bin"
.endif

USE_GMAKE=	Yes
NO_TEST=	Yes

FILES=\
	MLO \
	SPL \
	u-boot \
	u-boot.img \
	u-boot.bin \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-dtb.imx \
	u-boot-spl.kwb \
	u-boot-with-spl.bin \
	u-boot.itb \
	u-boot-rockchip.bin \
	idbloader.img \
	spl/sunxi-spl.bin \
	spl/u-boot-spl.bin

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
.if "${BOARD:M*-rk3399*}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3399_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*-rk3328}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3328_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*sifive_*}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} OPENSBI=${FW_DYNAMIC} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
.if "${BOARD:M*-rk3288}"
	cd ${WRKSRC}/build/${BOARD} && \
	    tools/mkimage -n rk3288 -T rksd -d tpl/u-boot-tpl.bin \
	        idbloader.img && \
	    cat spl/u-boot-spl-dtb.bin >> idbloader.img
.endif
.endfor
.for BOARD in ${SUNXI64}
.if "${BOARD:M*_h64*}"
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
	if [[ -f ${WRKSRC}/build/${BOARD}/spl/sunxi-spl.bin && \
	      -f ${WRKSRC}/build/${BOARD}/u-boot.itb ]]; then \
		cd ${WRKSRC}/build/${BOARD} && \
		    cat spl/sunxi-spl.bin u-boot.itb > u-boot-sunxi-with-spl.bin ; \
	fi
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS} ${SUNXI64}
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD}
	-cd ${WRKSRC}/build/${BOARD} && \
	    cp ${FILES} ${PREFIX}/share/u-boot/${BOARD}/
.endfor
