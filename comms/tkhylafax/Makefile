# $OpenBSD: Makefile,v 1.22 2007/10/26 20:54:05 ajacoutot Exp $

COMMENT=	Tcl/Tk interface to Sam Leffler's fax package

DISTNAME=	tkhylafax-3.0b2
PKGNAME=	tkhylafax-3.0
CATEGORIES=	comms

BROKEN=		required dependencies not available

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.NeoSoft.com/tcl/ftparchive/sorted/comm/tkhylafax-3.0b2/

RUN_DEPENDS=	::comms/hylafax \
		::print/gv

WRKDIST=		${WRKDIR}/tkhylafax-3.0
FAKE_FLAGS=	\
	TCLLIB_DEST=${PREFIX}/lib/tkhylafax-3.0 \
	TCLPRG_DEST=${PREFIX}/bin \
	TCLMAN_DEST=${PREFIX}/man/man1

.include <bsd.port.mk>
