# $OpenBSD: Makefile,v 1.5 2019/05/13 16:46:23 danj Exp $

FW_DRIVER=	bwi
FW_VER=		1.4
DISTNAME=	bwi-firmware-${FW_VER}
REVISION=	5

HOMEPAGE=	http://www.nazgul.ch/bwi/

FIRMWARE=	airforce info

do-install:
.for i in ${FIRMWARE}
	 ${INSTALL_DATA} ${WRKSRC}/bwi-$i ${PREFIX}/firmware/bwi-$i
.endfor

.include <bsd.port.mk>
