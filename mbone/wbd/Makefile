# $OpenBSD: Makefile,v 1.29 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	tcl80::lang/tcl/8.0 \
		tk80::x11/tk/8.0

MAKE_FILE=	makefile
WRKDIST=	${WRKDIR}/wbd

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
