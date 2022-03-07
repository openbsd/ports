FW_DRIVER=	iwi
FW_VER=		3.1
DISTNAME=	ipw2200-fw-${FW_VER}
REVISION=	2

EXTRACT_SUFX=	.tgz

# license info at http://ipw2200.sourceforge.net/firmware.php?fid=8
HOMEPAGE=	http://ipw2200.sourceforge.net/firmware.php

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE.ipw2200-fw ${PREFIX}/firmware/iwi-license
	echo "\nThe following files are under this license:\n\niwi-bss iwi-ibss iwi-monitor\n\nThese files are needed by iwi(4) devices." >> ${PREFIX}/firmware/iwi-license
	${INSTALL_DATA} ${WRKSRC}/ipw2200-bss.fw ${PREFIX}/firmware/iwi-bss
	${INSTALL_DATA} ${WRKSRC}/ipw2200-ibss.fw ${PREFIX}/firmware/iwi-ibss
	${INSTALL_DATA} ${WRKSRC}/ipw2200-sniffer.fw ${PREFIX}/firmware/iwi-monitor

.include <bsd.port.mk>
