# $OpenBSD: Makefile,v 1.6 1999/10/28 15:24:54 fgsch Exp $

DISTNAME=	bladeenc-085-src-unstable
PKGNAME=	bladeenc-0.85
CATEGORIES=	audio
MASTER_SITES=	http://home.swipnet.se/~w-82625/source/

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://bladeenc.cjb.net/

post-extract:
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	@${MKDIR} ${PREFIX}/share/doc/bladeenc
	${INSTALL_PROGRAM} ${WRKSRC}/bladeenc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bladeenc.html ${PREFIX}/share/doc/bladeenc

.include <bsd.port.mk>
