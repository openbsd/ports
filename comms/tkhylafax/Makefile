# OpenBSD Makefile for:	tkhylafax-3.0
# Version required:	3.0b2
# Date created:		Dec 31, 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/04/28 20:06:06 marc Exp $
#

BROKEN=		"tk42 and ghostscript4 not in ports"
DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms
MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

MAINTAINER=	joey@OpenBSD.ORG

RUN_DEPENDS=	sendfax:${PORTSDIR}/comms/hylafax \
		gv:${PORTSDIR}/print/gv \
#		wish4.2:${PORTSDIR}/x11/tk42 \
#		gs:${PORTSDIR}/print/ghostscript4

WRKSRC=		${WRKDIR}/tkhylafax-3.0
MAN1=		tkhylafax.1

.include <bsd.port.mk>
