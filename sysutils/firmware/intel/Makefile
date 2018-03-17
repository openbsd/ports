# $OpenBSD: Makefile,v 1.5 2018/03/17 11:38:06 jsg Exp $

FW_DRIVER=	intel

FW_VER=		20180312
EPOCH=		0
MASTER_SITES=	https://downloadmirror.intel.com/27591/eng/

DISTNAME=	microcode-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/* ${PREFIX}/firmware/intel

.include <bsd.port.mk>
