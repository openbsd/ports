# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:10 turan Exp $

DISTNAME=	xmp-1.1.5
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/players

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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


