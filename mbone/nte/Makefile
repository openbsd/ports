# $OpenBSD: Makefile,v 1.6 2000/02/11 00:37:30 espie Exp $

DISTNAME=       nte-1.7.0
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/nte/1.7.0/

NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libcommon.a:${PORTSDIR}/mbone/common
LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_GMAKE=	yes
HAS_CONFIGURE=	yes

WRKDIST=		${WRKDIR}/nte

post-extract:
	@${CP} ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@${CP} ${FILESDIR}/configure ${WRKSRC}
	@${CHMOD} 755 ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/linux/nte ${PREFIX}/bin

.include <bsd.port.mk>
