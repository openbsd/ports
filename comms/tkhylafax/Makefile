# $OpenBSD: Makefile,v 1.3 1998/10/07 19:25:27 marc Exp $
#

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

BROKEN=		"required dependencies not available"

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

RUN_DEPENDS=	sendfax:${PORTSDIR}/comms/hylafax \
		gv:${PORTSDIR}/print/gv \
#		wish4.2:${PORTSDIR}/x11/tk42 \
#		gs:${PORTSDIR}/print/ghostscript4

WRKSRC=		${WRKDIR}/tkhylafax-3.0
MAN1=		tkhylafax.1

.include <bsd.port.mk>
