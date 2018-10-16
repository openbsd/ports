# $OpenBSD: Makefile,v 1.10 2018/10/16 12:36:26 sthen Exp $

COMMENT=	microcode update binaries for Intel CPUs
FW_DRIVER=	intel

FW_VER=		20180807
EPOCH=		0
REVISION=	0
MASTER_SITES=	https://downloadmirror.intel.com/28087/eng/

DISTNAME=	microcode-${FW_VER}a

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/*-* ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/license ${PREFIX}/firmware/intel-ucode-license

.include <bsd.port.mk>
