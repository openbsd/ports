# $OpenBSD: Makefile,v 1.18 2002/12/29 19:32:37 fgsch Exp $

COMMENT=	"Tcl/Tk interface to Sam Leffler's fax package"

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

FAKE=No

BROKEN=		"required dependencies not available"

# License: BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

RUN_DEPENDS=	::comms/hylafax \
		::print/gv

WRKDIST=		${WRKDIR}/tkhylafax-3.0

.include <bsd.port.mk>
