# $OpenBSD: Makefile,v 1.4 2016/01/11 12:38:05 jasper Exp $

FW_DRIVER=	bwi
FW_VER=		1.4
DISTNAME=	bwi-firmware-${FW_VER}
REVISION=	4

MAINTAINER=	Marcus Glocker <marcus@nazgul.ch>

HOMEPAGE=	http://www.nazgul.ch/bwi/

FIRMWARE=	airforce info

do-install:
.for i in ${FIRMWARE}
	 ${INSTALL_DATA} ${WRKSRC}/bwi-$i ${PREFIX}/firmware/bwi-$i
.endfor

.include <bsd.port.mk>
