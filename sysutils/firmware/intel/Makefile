# $OpenBSD: Makefile,v 1.12 2019/05/14 20:40:43 sthen Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20190514
EPOCH=		0
REVISION=	0
GH_ACCOUNT=	intel
GH_PROJECT=	Intel-Linux-Processor-Microcode-Data-Files
GH_TAGNAME=	microcode-${FW_VER}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIST}/intel-ucode/*-* ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIST}/license ${PREFIX}/firmware/intel-ucode-license

.include <bsd.port.mk>
