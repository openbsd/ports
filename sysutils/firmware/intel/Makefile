# $OpenBSD: Makefile,v 1.14 2019/07/01 14:09:58 bluhm Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20190618
REVISION=	0
EPOCH=		0
GH_ACCOUNT=	intel
GH_PROJECT=	Intel-Linux-Processor-Microcode-Data-Files
GH_TAGNAME=	microcode-${FW_VER}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIST}/intel-ucode/*-* ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIST}/intel-ucode-with-caveats/*-* ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIST}/license ${PREFIX}/firmware/intel-ucode-license

.include <bsd.port.mk>
