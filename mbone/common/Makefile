# $OpenBSD: Makefile,v 1.1.1.1 1999/09/02 20:59:15 angelos Exp $
#

DISTNAME=       common
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/
DISTFILES=      common-1.0.6.tar.gz
MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80 \
		tcl80:${PORTSDIR}/lang/tcl80

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
