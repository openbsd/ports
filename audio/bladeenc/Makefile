# $OpenBSD: Makefile,v 1.1.1.1 1999/08/02 05:15:46 brad Exp $

DISTNAME=	bladeenc-084-src-unstable
PKGNAME=	bladeenc-0.84
CATEGORIES=	audio
MASTER_SITES=	http://home8.swipnet.se/~w-82625/encoder/source/

post-extract:
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	@${MKDIR} ${PREFIX}/share/doc/bladeenc
	${INSTALL_PROGRAM} ${WRKSRC}/bladeenc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bladeenc.html ${PREFIX}/share/doc/bladeenc


.include <bsd.port.mk>
