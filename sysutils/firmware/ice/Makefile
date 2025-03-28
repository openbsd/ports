FW_VER=		20250311
FW_DRIVER=	ice
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{intel/ice/ddp/*,LICENSE.ice*,WHENCE}

HOMEPAGE=	https://www.intel.com/content/www/us/en/content-details/761684/program-the-ethernet-pipeline-with-dynamic-device-personalization-ddp-for-intel-ethernet-800-series-technology-brief.html

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE.ice \
	    ${PREFIX}/firmware/ice-license
	${INSTALL_DATA} ${WRKSRC}/intel/ice/ddp/ice-1.3.41.0.pkg \
	    ${PREFIX}/firmware/ice-ddp

.include <bsd.port.mk>
