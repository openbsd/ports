# OpenBSD makefile for:	gsm
# Version required:     gsm-1.0.10
# Date created:		December 4, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/02/10 10:45:20 niklas Exp $
#

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

WRKSRC=         ${WRKDIR}/gsm-1.0-pl10
MAN1=		toast.1
MAN3=		gsm.3 gsm_explode.3 gsm_option.3 gsm_print.3

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
