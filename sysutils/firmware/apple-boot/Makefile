FW_DRIVER=	apple-boot
FW_VER=		1.0
REVISION=	2

WRKDIST=	${WRKDIR}
DISTFILES=

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=	m1n1-=1.1.6p1:sysutils/m1n1 \
		u-boot-asahi-=2022.07.3p3:sysutils/u-boot-asahi:build

ASAHI_BUILD=	${WRKSRC}/sysutils/u-boot-asahi/u-boot-asahi-*/build

do-install:
	cat ${LOCALBASE}/share/m1n1/m1n1.bin ${ASAHI_BUILD}/arch/arm/dts/*.dtb \
		> ${PREFIX}/firmware/apple-boot.bin
	gzip -c ${ASAHI_BUILD}/u-boot-nodtb.bin \
		>> ${PREFIX}/firmware/apple-boot.bin
	cat ${LOCALBASE}/share/m1n1/m1n1.LICENSE ${ASAHI_BUILD}/LICENSE \
	    > ${PREFIX}/firmware/apple-boot-license

.include <bsd.port.mk>
