# $OpenBSD: Makefile,v 1.4 1999/09/03 16:08:07 angelos Exp $

DISTNAME=       nte
DISTFILES=	nte-1.7.0.tar.gz
PKGNAME=	nte
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/nte/1.7.0/
MAINTAINER=	angelos@openbsd.org

NEED_VERSION=	1.111

BUILD_DEPENDS=	${PREFIX}/lib/libcommon.a:${PORTSDIR}/mbone/common
LIB_DEPENDS=	tcl80:${PORTSDIR}/lang/tcl80 \
		tk80:${PORTSDIR}/x11/tk80

USE_GMAKE=	yes
HAS_CONFIGURE=	yes

post-extract:
	@${CP} ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@${CP} ${FILESDIR}/configure ${WRKSRC}
	@${CHMOD} 755 ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/linux/nte ${PREFIX}/bin

.include <bsd.port.mk>
