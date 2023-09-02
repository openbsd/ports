VERSION=	2021.10
REVISION=	7

SOC=		riscv64

BOARDS=\
	qemu-riscv64_smode \
	sifive_unmatched

BUILD_DEPENDS+=	devel/riscv-elf/gcc \
		sysutils/opensbi>=0.9p0
CROSS_COMPILE=	riscv64-unknown-elf-
FW_DYNAMIC=	${LOCALBASE}/share/opensbi/generic/fw_dynamic.bin

.include <bsd.port.mk>
