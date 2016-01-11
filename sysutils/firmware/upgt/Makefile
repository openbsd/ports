# $OpenBSD: Makefile,v 1.4 2016/01/11 12:38:05 jasper Exp $

FW_DRIVER=	upgt
FW_VER=		1.1
DISTNAME=	upgt-firmware-${FW_VER}
REVISION=	4

MAINTAINER=	Marcus Glocker <marcus@nazgul.ch>

HOMEPAGE=	http://www.nazgul.ch/upgt/

FIRMWARE=	gw3887 info

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/upgt-$i ${PREFIX}/firmware/upgt-$i
.endfor

.include <bsd.port.mk>
