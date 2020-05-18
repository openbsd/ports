# $OpenBSD: Makefile,v 1.3 2020/05/18 19:30:56 kn Exp $

FW_DRIVER=	inteldrm
FW_VER=		20181218
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,i915}

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915

FIRMWARE=	bxt_dmc_ver1_07.bin \
		cnl_dmc_ver1_07.bin \
		glk_dmc_ver1_04.bin \
		kbl_dmc_ver1_04.bin \
		skl_dmc_ver1_27.bin \
		bxt_huc_ver01_07_1398.bin \
		kbl_huc_ver02_00_1810.bin \
		skl_huc_ver01_07_1398.bin \
		bxt_guc_ver9_29.bin \
		kbl_guc_ver9_39.bin \
		skl_guc_ver9_33.bin

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENSE.i915 \
	    ${PREFIX}/firmware/i915/i915-license

.include <bsd.port.mk>
