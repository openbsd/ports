# $OpenBSD: Makefile,v 1.7 2018/06/24 11:37:23 sthen Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20180425
REVISION=	0
EPOCH=		0
MASTER_SITES=	https://downloadmirror.intel.com/27776/eng/

DISTNAME=	microcode-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/*-* ${PREFIX}/firmware/intel

.include <bsd.port.mk>
