FW_DRIVER=	mwx
FW_VER=		20260309
DISTNAME=	linux-firmware-${FW_VER}
REVISION=	0
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENCE.mediatek,mediatek/\*MT79\*}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/drivers/mediatek

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.mediatek ${PREFIX}/firmware/mwx-license
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_RAM_CODE_MT7961_1.bin ${PREFIX}/firmware/mwx-mt7961_ram_code_1
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_RAM_CODE_MT7961_1a.bin ${PREFIX}/firmware/mwx-mt7961_ram_code_1a
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_RAM_CODE_MT7922_1.bin ${PREFIX}/firmware/mwx-mt7922_ram_code_1
	${INSTALL_DATA} ${WRKSRC}/mediatek/mt7925/WIFI_RAM_CODE_MT7925_1_1.bin ${PREFIX}/firmware/mwx-mt7925_ram_code_1_1
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_MT7961_patch_mcu_1_2_hdr.bin ${PREFIX}/firmware/mwx-mt7961_patch_mcu_1_2_hdr
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_MT7961_patch_mcu_1a_2_hdr.bin ${PREFIX}/firmware/mwx-mt7961_patch_mcu_1a_2_hdr
	${INSTALL_DATA} ${WRKSRC}/mediatek/WIFI_MT7922_patch_mcu_1_1_hdr.bin ${PREFIX}/firmware/mwx-mt7922_patch_mcu_1_1_hdr
	${INSTALL_DATA} ${WRKSRC}/mediatek/mt7925/WIFI_MT7925_PATCH_MCU_1_1_hdr.bin ${PREFIX}/firmware/mwx-mt7925_patch_mcu_1_1_hdr

.include <bsd.port.mk>
