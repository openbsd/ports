# $OpenBSD: Makefile,v 1.2 2011/07/08 21:20:49 sthen Exp $

FW_DRIVER=	upgt
FW_VER=		1.1
DISTNAME=	upgt-firmware-${FW_VER}
REVISION=	2

MAINTAINER=	Marcus Glocker <mglocker@openbsd.org>

HOMEPAGE=	http://www.nazgul.ch/upgt/

FIRMWARE=	gw3887 info

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/upgt-$i ${PREFIX}/firmware/upgt-$i
.endfor

.include <bsd.port.mk>
