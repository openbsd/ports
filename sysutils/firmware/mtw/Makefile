FW_DRIVER=	mtw
FW_VER=		20230804
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,mediatek/mt7601\*}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/drivers/mediatek

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/


do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.ralink_a_mediatek_company_firmware \
	    ${PREFIX}/firmware/mtw-license
	${INSTALL_DATA} ${WRKSRC}/mediatek/mt7601u.bin ${PREFIX}/firmware/mtw-mt7601u

.include <bsd.port.mk>
