FW_DRIVER=	m1n1-uboot
FW_VER=		1.0

WRKDIST=	${WRKDIR}
DISTFILES=

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=		sysutils/m1n1 \
			sysutils/u-boot-asahi

do-install:
	cat ${LOCALBASE}/share/m1n1/m1n1.bin \
	    ${LOCALBASE}/share/u-boot/apple_m1/dts/* > ${PREFIX}/firmware/m1n1-uboot.bin
	gzip -c ${LOCALBASE}/share/u-boot/apple_m1/u-boot-nodtb.bin >> ${PREFIX}/firmware/m1n1-uboot.bin

.include <bsd.port.mk>
