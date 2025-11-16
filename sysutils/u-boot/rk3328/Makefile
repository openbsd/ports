VERSION=	2025.07

SOC=		rk3328

BOARDS=\
	nanopi-r2s-rk3328 \
	rock64-rk3328

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,aarch64 \
		devel/py-elftools \
		security/gnutls \
		shells/bash \
		sysutils/arm-trusted-firmware>=2.2p0v0 \
		sysutils/e2fsprogs
CROSS_COMPILE=	aarch64-none-elf-

RK3328_BL31=	${LOCALBASE}/share/arm-trusted-firmware/rk3328-bl31.elf

MAKE_ENV+=	BL31=${RK3328_BL31}

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
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

.include <bsd.port.mk>
