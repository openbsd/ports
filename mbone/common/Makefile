# $OpenBSD: Makefile,v 1.2 1999/09/02 21:29:39 brad Exp $

DISTNAME=       common-1.0.6
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/
MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80 \
		tcl80:${PORTSDIR}/lang/tcl80

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
