# $OpenBSD: Makefile,v 1.6 2021/10/04 09:19:34 jsg Exp $

FW_DRIVER=	inteldrm
FW_VER=		20210919
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,i915}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

# referenced only by drm 5.10
FW510=		cnl_dmc_ver1_07.bin \
		rkl_dmc_ver2_02.bin \
		tgl_dmc_ver2_08.bin \
		bxt_guc_33.0.0.bin \
		cml_guc_33.0.0.bin \
		ehl_guc_33.0.4.bin \
		glk_guc_33.0.0.bin \
		icl_guc_33.0.0.bin \
		kbl_guc_33.0.0.bin \
		skl_guc_33.0.0.bin \
		tgl_guc_35.2.0.bin \
		tgl_huc_7.5.0.bin 

# referenced by drm 5.15
FIRMWARE=	adlp_dmc_ver2_10.bin \
		adls_dmc_ver2_01.bin \
		bxt_dmc_ver1_07.bin \
		dg1_dmc_ver2_02.bin \
		glk_dmc_ver1_04.bin \
		icl_dmc_ver1_09.bin \
		kbl_dmc_ver1_04.bin \
		rkl_dmc_ver2_03.bin \
		skl_dmc_ver1_27.bin \
		tgl_dmc_ver2_12.bin \
		adlp_guc_62.0.3.bin \
		bxt_guc_62.0.0.bin \
		cml_guc_62.0.0.bin \
		ehl_guc_62.0.0.bin \
		glk_guc_62.0.0.bin \
		icl_guc_62.0.0.bin \
		kbl_guc_62.0.0.bin \
		skl_guc_62.0.0.bin \
		tgl_guc_62.0.0.bin \
		bxt_huc_2.0.0.bin \
		cml_huc_4.0.0.bin \
		ehl_huc_9.0.0.bin \
		glk_huc_4.0.0.bin \
		icl_huc_9.0.0.bin \
		kbl_huc_4.0.0.bin \
		skl_huc_2.0.0.bin \
		tgl_huc_7.9.3.bin \
		${FW510}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENSE.i915 \
	    ${PREFIX}/firmware/i915/i915-license

.include <bsd.port.mk>
