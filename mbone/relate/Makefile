# $OpenBSD: Makefile,v 1.17 2001/06/20 01:43:25 pvalchev Exp $

COMMENT=	"ReLaTe integrated conferencing tool from UCL"

DISTNAME=       relate-2.0
CATEGORIES=	mbone
NEED_VERSION=	1.402
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/relate-ui/2.0/
MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80::lang/tcl/8.0 \
		tk80::x11/tk/8.0 \

RUN_DEPENDS=	nte::mbone/nte \
		vic::mbone/vic \
		wbd::mbone/wbd \
		rat::mbone/rat

USE_GMAKE=	Yes
MAKE_FILE=	makefile
ALL_TARGET=		
WRKDIST=	${WRKDIR}/relate

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relate ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/relate.tcl ${PREFIX}/bin

.include <bsd.port.mk>
