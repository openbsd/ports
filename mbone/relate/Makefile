# $OpenBSD: Makefile,v 1.10 2000/04/09 17:37:04 espie Exp $

BROKEN=		dependency mbone/wbd is also broken

DISTNAME=       relate
DISTFILES=	relate-2.0.tar.gz
CATEGORIES=	mbone
NEED_VERSION=	1.230
FAKE=No
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/relate-ui/2.0/
MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relate ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/relate.tcl ${PREFIX}/bin

.include <bsd.port.mk>
