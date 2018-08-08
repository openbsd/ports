# $OpenBSD: Makefile,v 1.9 2018/08/08 04:57:41 jsg Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20180807
EPOCH=		0
MASTER_SITES=	https://downloadmirror.intel.com/28039/eng/

DISTNAME=	microcode-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/*-* ${PREFIX}/firmware/intel

.include <bsd.port.mk>
