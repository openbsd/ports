VERSION=	2021.10
REVISION=	8

SOC=		riscv64

BOARDS=\
	qemu-riscv64_smode \
	sifive_unmatched

BUILD_DEPENDS+=	devel/riscv-elf/gcc \
		sysutils/opensbi>=0.9p0
CROSS_COMPILE=	riscv64-unknown-elf-
FW_DYNAMIC=	${LOCALBASE}/share/opensbi/generic/fw_dynamic.bin

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} OPENSBI=${FW_DYNAMIC} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

.include <bsd.port.mk>
