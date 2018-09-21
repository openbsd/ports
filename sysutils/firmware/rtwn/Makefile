# $OpenBSD: Makefile,v 1.2 2018/09/21 09:49:45 sthen Exp $

FW_DRIVER=	rtwn
# date of the newest files in rtlwifi dir
FW_VER=		20180103

# date of the newest files in linux-firmware checkout
DISTNAME=	linux-firmware-20180913
EXTRACT_SUFX=	.tar.xz

do-install:
.for s i in \
	LICENCE.rtlwifi_firmware.txt	rtwn-license		\
	rtlwifi/rtl8188efw.bin		rtwn-rtl8188efw		\
	rtlwifi/rtl8192eefw.bin		rtwn-rtl8192eefw	\
	rtlwifi/rtl8723befw_36.bin	rtwn-rtl8723befw_36	\
	rtlwifi/rtl8723fw.bin		rtwn-rtl8723fw		\
	rtlwifi/rtl8723fw_B.bin		rtwn-rtl8723fw_B	\
	rtlwifi/rtl8192cfwU.bin		rtwn-rtl8192cfwU	\
	rtlwifi/rtl8192cfwU_B.bin	rtwn-rtl8192cfwU_B
	${INSTALL_DATA} ${WRKSRC}/$s ${PREFIX}/firmware/$i
.endfor

.include <bsd.port.mk>
