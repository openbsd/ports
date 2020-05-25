# $OpenBSD: Makefile,v 1.4 2020/05/25 03:10:09 jsg Exp $

FW_DRIVER=	inteldrm
FW_VER=		20200421
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,i915}

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915

# referenced only by drm 4.19
FW419=		bxt_huc_ver01_07_1398.bin \
		kbl_huc_ver02_00_1810.bin \
		skl_huc_ver01_07_1398.bin \
		bxt_guc_ver9_29.bin \
		kbl_guc_ver9_39.bin \
		skl_guc_ver9_33.bin

# referenced by drm 5.7
FIRMWARE=	bxt_dmc_ver1_07.bin \
		cnl_dmc_ver1_07.bin \
		glk_dmc_ver1_04.bin \
		icl_dmc_ver1_09.bin \
		kbl_dmc_ver1_04.bin \
		skl_dmc_ver1_27.bin \
		tgl_dmc_ver2_06.bin \
		bxt_guc_33.0.0.bin \
		cml_guc_33.0.0.bin \
		ehl_guc_33.0.4.bin \
		glk_guc_33.0.0.bin \
		icl_guc_33.0.0.bin \
		kbl_guc_33.0.0.bin \
		skl_guc_33.0.0.bin \
		tgl_guc_35.2.0.bin \
		bxt_huc_2.0.0.bin \
		cml_huc_4.0.0.bin \
		ehl_huc_9.0.0.bin \
		glk_huc_4.0.0.bin \
		icl_huc_9.0.0.bin \
		kbl_huc_4.0.0.bin \
		skl_huc_2.0.0.bin \
		tgl_huc_7.0.12.bin \
		${FW419}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENSE.i915 \
	    ${PREFIX}/firmware/i915/i915-license

.include <bsd.port.mk>
