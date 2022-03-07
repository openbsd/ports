FW_DRIVER=	mtw
FW_VER=		20220209
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,mt7601\*}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/drivers/mediatek

MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/


do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.ralink_a_mediatek_company_firmware \
	    ${PREFIX}/firmware/mtw-license
	${INSTALL_DATA} ${WRKSRC}/mt7601u.bin ${PREFIX}/firmware/mtw-mt7601u

.include <bsd.port.mk>
