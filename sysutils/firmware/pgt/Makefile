FW_DRIVER=	pgt
FW_VER=		1.2
DISTNAME=	pgt-firmware-${FW_VER}
REVISION=	5

HOMEPAGE=	http://www.nazgul.ch/pgt/

FIRMWARE=	info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
