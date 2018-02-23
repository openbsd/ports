# $OpenBSD: Makefile,v 1.4 2018/02/23 07:45:07 patrick Exp $

FW_DRIVER=	intel

FW_VER=		20171117
EPOCH=		0
REVISION=	1
MASTER_SITES=	https://downloadmirror.intel.com/27337/eng/

DISTNAME=	microcode-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://downloadcenter.intel.com/search?keyword=Linux*+Processor+Microcode+Data+File
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/intel
	${INSTALL_DATA} ${WRKDIR}/intel-ucode/* ${PREFIX}/firmware/intel

.include <bsd.port.mk>
