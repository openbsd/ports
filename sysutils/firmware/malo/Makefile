# $OpenBSD: Makefile,v 1.2 2011/07/08 21:20:49 sthen Exp $

FW_DRIVER=	malo
FW_VER=		1.4
DISTNAME=	malo-firmware-${FW_VER}
REVISION=	2

MAINTAINER=	Marcus Glocker <mglocker@openbsd.org>

HOMEPAGE=	http://www.nazgul.ch/malo/

FIRMWARE=	-info 8335-h 8335-m 8338 8385-h 8385-m

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/malo$i ${PREFIX}/firmware/malo$i
.endfor

.include <bsd.port.mk>
