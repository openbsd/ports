# $OpenBSD: Makefile,v 1.6 1999/10/26 11:30:41 downsj Exp $

DISTNAME=	xmp-1.1.5
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/players

MAINTAINER=	ports@openbsd.org

PATCH_STRIP=	-p1
PATCH_DIST_STRIP= -p1

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xmp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xxmp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/xmp.1 ${MANPREFIX}/man/man1
	@${LN} -sf ${MANPREFIX}/man/man1/xmp.1 ${MANPREFIX}/man/man1/xxmp.1

.include <bsd.port.mk>


