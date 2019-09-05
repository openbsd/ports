# $OpenBSD: Makefile,v 1.4 2019/09/05 19:14:30 sthen Exp $

FW_DRIVER=	bwfm
FW_VER=		20171125
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Patrick Wildt <patrick@blueri.se>
# switch to pre-rolled tarball when updating:
#MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/brcm

do-install:
	${INSTALL_DATA} ${WRKSRC}/brcm/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/LICENCE.broadcom_bcm43xx \
	    ${PREFIX}/firmware/bwfm-license

.include <bsd.port.mk>
