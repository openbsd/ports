# $OpenBSD: Makefile,v 1.4 1999/04/01 02:57:57 brad Exp $

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

BROKEN=		"required dependencies not available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

RUN_DEPENDS=	sendfax:${PORTSDIR}/comms/hylafax \
		gv:${PORTSDIR}/print/gv

WRKSRC=		${WRKDIR}/tkhylafax-3.0
MAN1=		tkhylafax.1

.include <bsd.port.mk>
