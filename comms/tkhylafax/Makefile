# $OpenBSD: Makefile,v 1.11 2000/03/24 23:28:04 espie Exp $

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms
NEED_VERSION=	 1.230

BROKEN=		"required dependencies not available"

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		"BSD NONE"
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

RUN_DEPENDS=	sendfax::comms/hylafax \
		gv::print/gv

WRKDIST=		${WRKDIR}/tkhylafax-3.0

.include <bsd.port.mk>
