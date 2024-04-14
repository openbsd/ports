VERSION=	2024.01-rc3
REVISION=	2

SOC=		rk3588

BOARDS=\
	nanopi-r6c-rk3588s \
	nanopi-r6s-rk3588s \
	nanopc-t6-rk3588 \
	orangepi-5-plus-rk3588 \
	orangepi-5-rk3588s \
	rock5a-rk3588s \
	rock5b-rk3588

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,aarch64 \
		devel/py-elftools${MODPY_FLAVOR} \
		shells/bash \
		sysutils/e2fsprogs
CROSS_COMPILE=	aarch64-none-elf-

RK3588_TPL=	rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.12.bin
RK3588_BL31=	rk3588_bl31_v1.40.elf

DISTFILES.rkbin= ${RK3588_TPL} ${RK3588_BL31}
SITES.rkbin=	https://github.com/rockchip-linux/rkbin/raw/master/bin/rk35/
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MAKE_ENV+=	BL31=${FULLDISTDIR}/${RK3588_BL31}

pre-build:
	cc -o ${WRKSRC}/rkbinpatch ${FILESDIR}/rkbinpatch.c 
	cd ${WRKSRC} && \
	    cp ${FULLDISTDIR}/${RK3588_TPL} . && \
	    ./rkbinpatch ${RK3588_TPL}

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
	cd ${WRKSRC}/build/${BOARD} && \
	    ../../scripts/config --set-val BAUDRATE 115200
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ROCKCHIP_TPL=${RK3588_TPL} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

.include <bsd.port.mk>
