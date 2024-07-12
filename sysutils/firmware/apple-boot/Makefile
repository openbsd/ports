FW_DRIVER=	apple-boot
FW_VER=		1.5

WRKDIST=	${WRKDIR}
DISTFILES=

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=	m1n1-=1.4.14:sysutils/m1n1:build \
		u-boot-asahi-=2024.01.1:sysutils/u-boot-asahi:build

ASAHI_BUILD=	${WRKSRC}/sysutils/u-boot-asahi/u-boot-*/build
M1N1_BUILD=	${WRKSRC}/sysutils/m1n1/m1n1-*/build

do-install:
	cat ${M1N1_BUILD}/m1n1.bin ${ASAHI_BUILD}/arch/arm/dts/*.dtb \
		> ${PREFIX}/firmware/apple-boot.bin
	gzip -c ${ASAHI_BUILD}/u-boot-nodtb.bin \
		>> ${PREFIX}/firmware/apple-boot.bin
	cat ${M1N1_BUILD}/m1n1.LICENSE ${ASAHI_BUILD}/LICENSE \
	    > ${PREFIX}/firmware/apple-boot-license

.include <bsd.port.mk>
