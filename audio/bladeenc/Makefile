# $OpenBSD: Makefile,v 1.5 1999/10/28 07:23:34 turan Exp $

BROKEN=		sources do not exist

DISTNAME=	bladeenc-085-src-unstable
PKGNAME=	bladeenc-0.85
CATEGORIES=	audio
MASTER_SITES=	http://home8.swipnet.se/~w-82625/encoder/source/

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://bladeenc.cjb.net/

post-extract:
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	@${MKDIR} ${PREFIX}/share/doc/bladeenc
	${INSTALL_PROGRAM} ${WRKSRC}/bladeenc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bladeenc.html ${PREFIX}/share/doc/bladeenc

.include <bsd.port.mk>
