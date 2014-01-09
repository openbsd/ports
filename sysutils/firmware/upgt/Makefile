# $OpenBSD: Makefile,v 1.3 2014/01/09 22:48:25 sthen Exp $

FW_DRIVER=	upgt
FW_VER=		1.1
DISTNAME=	upgt-firmware-${FW_VER}
REVISION=	3

MAINTAINER=	Marcus Glocker <mglocker@openbsd.org>

HOMEPAGE=	http://www.nazgul.ch/upgt/

FIRMWARE=	gw3887 info

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/upgt-$i ${PREFIX}/firmware/upgt-$i
.endfor

.include <bsd.port.mk>
