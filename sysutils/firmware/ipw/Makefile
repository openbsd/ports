FW_DRIVER=	ipw
FW_VER=		1.3
DISTNAME=	ipw2100-fw-${FW_VER}
REVISION=	2

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

# license info at http://ipw2100.sourceforge.net/firmware.php?fid=3
HOMEPAGE=	http://ipw2100.sourceforge.net/firmware.php

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/firmware/ipw-license
	echo "\nThe following files are under this license:\n\nipw-bss ipw-ibss ipw-monitor\n\nThese files are needed by ipw(4) devices." >> ${PREFIX}/firmware/ipw-license
	${INSTALL_DATA} ${WRKSRC}/ipw2100-1.3.fw ${PREFIX}/firmware/ipw-bss
	${INSTALL_DATA} ${WRKSRC}/ipw2100-1.3-i.fw ${PREFIX}/firmware/ipw-ibss
	${INSTALL_DATA} ${WRKSRC}/ipw2100-1.3-p.fw ${PREFIX}/firmware/ipw-monitor

.include <bsd.port.mk>
