# $OpenBSD: Makefile,v 1.5 2019/05/13 16:46:23 danj Exp $

FW_DRIVER=	pgt
FW_VER=		1.2
DISTNAME=	pgt-firmware-${FW_VER}
REVISION=	5

HOMEPAGE=	http://www.nazgul.ch/pgt/

FIRMWARE=	info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
