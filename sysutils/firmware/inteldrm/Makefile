FW_DRIVER=	inteldrm
FW_VER=		20250708
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,i915}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915
SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

# referenced by drm 6.6
# drm/i915/display/intel_dmc.c
# drm/i915/gt/uc/intel_uc_fw.c
FIRMWARE=	adlp_dmc.bin \
		adlp_dmc_ver2_16.bin \
		adls_dmc_ver2_01.bin \
		bxt_dmc_ver1_07.bin \
		dg1_dmc_ver2_02.bin \
		dg2_dmc_ver2_08.bin \
		glk_dmc_ver1_04.bin \
		icl_dmc_ver1_09.bin \
		kbl_dmc_ver1_04.bin \
		mtl_dmc.bin \
		rkl_dmc_ver2_03.bin \
		skl_dmc_ver1_27.bin \
		tgl_dmc_ver2_12.bin \
		adlp_guc_69.0.3.bin \
		adlp_guc_70.1.1.bin \
		adlp_guc_70.bin \
		bxt_guc_70.1.1.bin \
		cml_guc_70.1.1.bin \
		dg1_guc_70.bin \
		dg2_guc_70.bin \
		ehl_guc_70.1.1.bin \
		glk_guc_70.1.1.bin \
		icl_guc_70.1.1.bin \
		kbl_guc_70.1.1.bin \
		mtl_guc_70.bin \
		skl_guc_70.1.1.bin \
		tgl_guc_69.0.3.bin \
		tgl_guc_70.1.1.bin \
		tgl_guc_70.bin \
		bxt_huc_2.0.0.bin \
		cml_huc_4.0.0.bin \
		dg1_huc.bin \
		dg2_huc_gsc.bin \
		ehl_huc_9.0.0.bin \
		glk_huc_4.0.0.bin \
		icl_huc_9.0.0.bin \
		kbl_huc_4.0.0.bin \
		mtl_huc_gsc.bin \
		skl_huc_2.0.0.bin \
		tgl_huc.bin \
		tgl_huc_7.9.3.bin \
		mtl_gsc_1.bin

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENSE.i915 \
	    ${PREFIX}/firmware/i915/i915-license

.include <bsd.port.mk>
