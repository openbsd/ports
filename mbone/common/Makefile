# $OpenBSD: Makefile,v 1.9 2000/02/12 06:29:58 turan Exp $

DISTNAME=       common-1.0.6
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

WRKDIST=		${WRKDIR}/common

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
