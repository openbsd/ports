# $OpenBSD: Makefile,v 1.5 2019/05/13 16:46:23 danj Exp $

FW_DRIVER=	upgt
FW_VER=		1.1
DISTNAME=	upgt-firmware-${FW_VER}
REVISION=	5

HOMEPAGE=	http://www.nazgul.ch/upgt/

FIRMWARE=	gw3887 info

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/upgt-$i ${PREFIX}/firmware/upgt-$i
.endfor

.include <bsd.port.mk>
