# $OpenBSD: Makefile,v 1.6 2000/02/11 00:37:19 espie Exp $

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

BROKEN=		"required dependencies not available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/
NEED_VERSION=	1.191

RUN_DEPENDS=	sendfax:${PORTSDIR}/comms/hylafax \
		gv:${PORTSDIR}/print/gv

WRKDIST=		${WRKDIR}/tkhylafax-3.0

.include <bsd.port.mk>
