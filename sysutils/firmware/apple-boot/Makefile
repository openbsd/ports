FW_DRIVER=	apple-boot
FW_VER=		1.0
REVISION=	0

WRKDIST=	${WRKDIR}
DISTFILES=

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=	m1n1-=1.1.6p1:sysutils/m1n1 \
		u-boot-asahi-=2022.07.3p1:sysutils/u-boot-asahi

do-install:
	cat ${LOCALBASE}/share/m1n1/m1n1.bin \
	    ${LOCALBASE}/share/u-boot/apple_m1/dts/* > ${PREFIX}/firmware/apple-boot.bin
	gzip -c ${LOCALBASE}/share/u-boot/apple_m1/u-boot-nodtb.bin >> ${PREFIX}/firmware/apple-boot.bin
	cat ${LOCALBASE}/share/m1n1/m1n1.LICENSE \
	    ${LOCALBASE}/share/u-boot/apple_m1/LICENSE > ${PREFIX}/firmware/apple-boot-license 

.include <bsd.port.mk>
