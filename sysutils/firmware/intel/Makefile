# $OpenBSD: Makefile,v 1.15 2019/09/28 14:54:56 jsg Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20190918
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
