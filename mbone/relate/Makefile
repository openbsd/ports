# $OpenBSD: Makefile,v 1.4 2000/02/12 06:29:59 turan Exp $

BROKEN=		dependency mbone/wbd is also broken

DISTNAME=       relate
DISTFILES=	relate-2.0.tar.gz
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/relate-ui/2.0/
MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

NEED_VERSION=	1.111

LIB_DEPENDS=	tcl80:${PORTSDIR}/lang/tcl80 \
		tk80:${PORTSDIR}/x11/tk80 \

RUN_DEPENDS=	nte:${PORTSDIR}/mbone/nte \
		vic:${PORTSDIR}/mbone/vic \
		wbd:${PORTSDIR}/mbone/wbd \
		rat:${PORTSDIR}/mbone/rat

USE_GMAKE=	yes
MAKEFILE=	makefile
ALL_TARGET=		

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relate ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/relate.tcl ${PREFIX}/bin

.include <bsd.port.mk>
