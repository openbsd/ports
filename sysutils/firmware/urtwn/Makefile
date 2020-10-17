# $OpenBSD: Makefile,v 1.8 2020/10/17 16:48:43 kn Exp $

FW_DRIVER=	urtwn
# date of the newest files in rtlwifi dir
FW_VER=		20180103
REVISION=	0

# date of the newest files in linux-firmware checkout
DISTNAME=	linux-firmware-20180913
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,rtlwifi}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

do-install:
.for s i in \
	LICENCE.rtlwifi_firmware.txt	urtwn-license		\
	rtlwifi/rtl8188eufw.bin		urtwn-rtl8188eufw	\
	rtlwifi/rtl8192eu_nic.bin	urtwn-rtl8192eu_nic	\
	rtlwifi/rtl8723bu_nic.bin	urtwn-rtl8723bu_nic	\
	rtlwifi/rtl8192cufw_A.bin	urtwn-rtl8192cfwU	\
	rtlwifi/rtl8192cufw_TMSC.bin	urtwn-rtl8192cfwT
	${INSTALL_DATA} ${WRKSRC}/$s ${PREFIX}/firmware/$i
.endfor

.include <bsd.port.mk>
