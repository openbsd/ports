FW_DRIVER=	qcpas
FW_VER=		20250410
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{qcom\*,LICEN\*}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/qcom

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/qcom/sc8280xp/LENOVO/21BX/
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/qcom/x1e80100/LENOVO/21N1/
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/qcom/x1e80100/LENOVO/83ED/
	${INSTALL_DATA} ${WRKSRC}/qcom/sc8280xp/LENOVO/21BX/*.mbn \
	    ${PREFIX}/firmware/qcom/sc8280xp/LENOVO/21BX/
	${INSTALL_DATA} ${WRKSRC}/qcom/x1e80100/LENOVO/21N1/*.mbn \
	    ${PREFIX}/firmware/qcom/x1e80100/LENOVO/21N1/
	${INSTALL_DATA} ${WRKSRC}/qcom/x1e80100/LENOVO/21N1/*.elf \
	    ${PREFIX}/firmware/qcom/x1e80100/LENOVO/21N1/
	${INSTALL_DATA} ${WRKSRC}/qcom/x1e80100/LENOVO/83ED/*.mbn \
	    ${PREFIX}/firmware/qcom/x1e80100/LENOVO/83ED/
	${INSTALL_DATA} ${WRKSRC}/qcom/x1e80100/LENOVO/83ED/*.elf \
	    ${PREFIX}/firmware/qcom/x1e80100/LENOVO/83ED/

	${INSTALL_DATA} ${WRKSRC}/LICENSE.qcom \
	    ${PREFIX}/firmware/qcpas-license

.include <bsd.port.mk>
