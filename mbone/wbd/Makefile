# $OpenBSD: Makefile,v 1.30 2004/06/26 07:35:07 xsa Exp $

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	tcl80::lang/tcl/8.0 \
		tk80::x11/tk/8.0

MAKE_FILE=	makefile
WRKDIST=	${WRKDIR}/wbd

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
