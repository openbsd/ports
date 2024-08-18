FW_DRIVER=	qwz

FW_VER=		20240815
DISTNAME=	linux-firmware-b1de0237a78a84baf7e1e2a1e9585405b88d82f8

#DISTNAME=	linux-firmware-${FW_VER}
#EXTRACT_SUFX=	.tar.xz
# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{ath12k\*,LICEN\*,WHENCE}

#SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/
SITES=		https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/ath12k

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

FW=	WCN7850/hw2.0

do-install:
	# As referenced by the WHENCE file
	${INSTALL_DATA} ${WRKSRC}/LICENSE.QualcommAtheros_ath10k \
	    ${PREFIX}/firmware/qwz-license
.for device in ${FW}
. for i in amss board-2 m3
	${INSTALL_DATA} ${WRKSRC}/ath12k/${device}/${i}.bin \
	    ${PREFIX}/firmware/qwz-${device:L:S/\//-/g}-${i}
.  endfor
.endfor


.include <bsd.port.mk>
