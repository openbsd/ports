# $OpenBSD: Makefile,v 1.4 1999/04/01 02:57:53 brad Exp $

DISTNAME=		xmp-1.1.5
CATEGORIES=		audio

MAINTAINER=		downsj@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/players
PATCH_STRIP=		-p1
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=		YES
USE_GMAKE=		YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xmp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xxmp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/xmp.1 ${MANPREFIX}/man/man1
	${LN} ${MANPREFIX}/man/man1/xmp.1 ${MANPREFIX}/man/man1/xxmp.1

.include <bsd.port.mk>


