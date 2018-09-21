# $OpenBSD: Makefile,v 1.6 2018/09/21 10:20:36 sthen Exp $

FW_DRIVER=	urtwn
# date of the newest files in rtlwifi dir
FW_VER=		20180103

# date of the newest files in linux-firmware checkout
DISTNAME=	linux-firmware-20180913
EXTRACT_SUFX=	.tar.xz

# some of the firmware files don't seem to have a match in linux-firmware,
# so using them from the old urtwn-1.2 tarball for now
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		urtwn-1.2.tar.gz

do-install:
.for s i in \
	LICENCE.rtlwifi_firmware.txt	urtwn-license		\
	rtlwifi/rtl8188eufw.bin		urtwn-rtl8188eufw	\
	rtlwifi/rtl8192eu_nic.bin	urtwn-rtl8192eu_nic	\
	rtlwifi/rtl8723bu_nic.bin	urtwn-rtl8723bu_nic	\
	../urtwn-1.2/urtwn-rtl8192cfwT	urtwn-rtl8192cfwT	\
	../urtwn-1.2/urtwn-rtl8192cfwU	urtwn-rtl8192cfwU	\
	../urtwn-1.2/urtwn-rtl8723fw	urtwn-rtl8723fw	
	${INSTALL_DATA} ${WRKSRC}/$s ${PREFIX}/firmware/$i
.endfor

.include <bsd.port.mk>
