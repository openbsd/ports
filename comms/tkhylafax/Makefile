# $OpenBSD: Makefile,v 1.8 2000/02/13 06:59:16 turan Exp $

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

BROKEN=		"required dependencies not available"

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		"BSD NONE"
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/
NEED_VERSION=	1.191

RUN_DEPENDS=	sendfax:${PORTSDIR}/comms/hylafax \
		gv:${PORTSDIR}/print/gv

WRKDIST=		${WRKDIR}/tkhylafax-3.0

.include <bsd.port.mk>
