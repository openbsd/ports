# $OpenBSD: Makefile,v 1.7 1999/09/04 23:13:08 brad Exp $

DISTNAME=       common-1.0.6
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/common

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
