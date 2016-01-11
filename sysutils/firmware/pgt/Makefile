# $OpenBSD: Makefile,v 1.4 2016/01/11 12:38:05 jasper Exp $

FW_DRIVER=	pgt
FW_VER=		1.2
DISTNAME=	pgt-firmware-${FW_VER}
REVISION=	4

MAINTAINER=	Marcus Glocker <marcus@nazgul.ch>

HOMEPAGE=	http://www.nazgul.ch/pgt/

FIRMWARE=	info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
