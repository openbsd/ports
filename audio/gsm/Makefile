# OpenBSD makefile for:	gsm
# Version required:     gsm-1.0.10
# Date created:		December 4, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/01/30 23:27:18 niklas Exp $
#

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

WRKSRC=         ${WRKDIR}/gsm-1.0-pl10
MAN1=		toast.1
MAN3=		gsm.3 gsm_explode.3 gsm_option.3 gsm_print.3

post-install:
.if ${MACHINE_ARCH} != "alpha"
.if ${MACHINE_ARCH} == "mips"
	${LDCONFIG} -n ${PREFIX}/lib
.else
	${LDCONFIG} -m ${PREFIX}/lib
.endif
.endif

.include <bsd.port.mk>
