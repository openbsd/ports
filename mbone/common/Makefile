# $OpenBSD: Makefile,v 1.6 1999/09/04 22:36:38 angelos Exp $

DISTNAME=       common
DISTFILES=	common-1.0.6.tar.gz
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/
MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80:${PORTSDIR}/lang/tcl80 \
		tk80:${PORTSDIR}/x11/tk80

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
