# $OpenBSD: Makefile,v 1.2 2011/07/08 21:20:49 sthen Exp $

FW_DRIVER=	pgt
FW_VER=		1.2
DISTNAME=	pgt-firmware-${FW_VER}
REVISION=	2

MAINTAINER=	Marcus Glocker <mglocker@openbsd.org>

HOMEPAGE=	http://www.nazgul.ch/pgt/

FIRMWARE=	info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
