# OpenBSD Makefile for:	tkhylafax-3.0
# Version required:	3.0b2
# Date created:		Dec 31, 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/31 16:58:35 joey Exp $
#

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms
MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

MAINTAINER=	joey@OpenBSD.ORG

RUN_DEPENDS=	wish4.2:${PORTSDIR}/x11/tk42 \
		sendfax:${PORTSDIR}/comms/hylafax \
		gs:${PORTSDIR}/print/ghostscript4 \
		gv:${PORTSDIR}/print/gv

WRKSRC=		${WRKDIR}/tkhylafax-3.0
MAN1=		tkhylafax.1

.include <bsd.port.mk>
