# $OpenBSD: Makefile,v 1.21 2004/12/09 16:20:35 sturm Exp $

COMMENT=	"ReLaTe integrated conferencing tool from UCL"

DISTNAME=	relate-2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mbone

MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/relate-ui/2.0/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tk80:tk->=8.0,<8.1:x11/tk/8.0 \

RUN_DEPENDS=	::mbone/nte \
		::mbone/vic \
		::mbone/wbd \
		::mbone/rat

USE_GMAKE=	Yes
MAKE_FILE=	makefile
ALL_TARGET=		
WRKDIST=	${WRKDIR}/relate

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relate ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/relate.tcl ${PREFIX}/bin

.include <bsd.port.mk>
