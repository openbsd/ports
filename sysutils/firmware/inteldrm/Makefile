# $OpenBSD: Makefile,v 1.1.1.1 2017/09/07 15:21:27 robert Exp $

FW_DRIVER=	inteldrm
FW_VER=		20170701
DISTNAME=	i915-firmware-${FW_VER}

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/tree/i915
MASTER_SITES=	http://nerd.hu/distfiles/

FIRMWARE=	bxt_dmc_ver1.bin \
		kbl_dmc_ver1.bin \
		skl_dmc_ver1.bin \
		skl_guc_ver6.bin

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKDIR}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKDIR}/i915/LICENSE.i915 \
	    ${PREFIX}/firmware/i915-license

.include <bsd.port.mk>
