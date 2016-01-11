# $OpenBSD: Makefile,v 1.5 2016/01/11 12:38:05 jasper Exp $

FW_DRIVER=	acx
FW_VER=		1.4
DISTNAME=	acx-firmware-${FW_VER}
REVISION=	5

MAINTAINER=	Marcus Glocker <marcus@nazgul.ch>

HOMEPAGE=	http://www.nazgul.ch/acx/

FIRMWARE=	-info 100 100r0D 100r11 111 111c16 111r16

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/tiacx$i ${PREFIX}/firmware/tiacx$i
.endfor

.include <bsd.port.mk>
