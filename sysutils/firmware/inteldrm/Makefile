# $OpenBSD: Makefile,v 1.5 2021/01/20 06:40:59 jsg Exp $

FW_DRIVER=	inteldrm
FW_VER=		20201218
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,i915}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

# referenced only by drm 5.7
FW57=		tgl_dmc_ver2_06.bin \
		tgl_huc_7.0.12.bin

# referenced by drm 5.10
FIRMWARE=	bxt_dmc_ver1_07.bin \
		cnl_dmc_ver1_07.bin \
		glk_dmc_ver1_04.bin \
		icl_dmc_ver1_09.bin \
		kbl_dmc_ver1_04.bin \
		rkl_dmc_ver2_02.bin \
		skl_dmc_ver1_27.bin \
		tgl_dmc_ver2_08.bin \
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
		tgl_huc_7.5.0.bin \
		${FW57}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/i915
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/i915/$i \
	    ${PREFIX}/firmware/i915/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENSE.i915 \
	    ${PREFIX}/firmware/i915/i915-license

.include <bsd.port.mk>
