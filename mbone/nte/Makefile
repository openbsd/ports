# $OpenBSD: Makefile,v 1.1.1.1 1999/09/02 21:18:00 angelos Exp $
#

DISTNAME=       nte
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/nte/1.7.0/
DISTFILES=      nte-1.7.0.tar.gz
MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80 \
		tcl80:${PORTSDIR}/lang/tcl80
#		common:${PORTSDIR}/mbone/common

HAS_CONFIGURE=	yes
USE_GMAKE=	yes

post-extract:
	@${CP} ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@${CP} ${FILESDIR}/configure ${WRKSRC}
	@chmod 755 ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/linux/nte ${PREFIX}/bin

.include <bsd.port.mk>
