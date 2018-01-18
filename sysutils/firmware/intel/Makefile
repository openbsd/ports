# $OpenBSD: Makefile,v 1.2 2018/01/18 23:15:10 sthen Exp $

FW_DRIVER=	intel

FW_VER=		20171117
EPOCH=		0
MASTER_SITES=	https://downloadmirror.intel.com/27337/eng/

DISTNAME=	microcode-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/* ${PREFIX}/firmware/intel

.include <bsd.port.mk>
