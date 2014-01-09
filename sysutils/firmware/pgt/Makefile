# $OpenBSD: Makefile,v 1.3 2014/01/09 22:48:25 sthen Exp $

FW_DRIVER=	pgt
FW_VER=		1.2
DISTNAME=	pgt-firmware-${FW_VER}
REVISION=	3

MAINTAINER=	Marcus Glocker <mglocker@openbsd.org>

HOMEPAGE=	http://www.nazgul.ch/pgt/

FIRMWARE=	info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
