# $OpenBSD: Makefile,v 1.11 2000/06/10 17:39:29 espie Exp $

BROKEN=	"Obvious tmp race in api/load.c, to fix"
DISTNAME=	xmp-1.1.5
CATEGORIES=	audio
NEED_VERSION=	1.300
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/players

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_STRIP=	-p1
PATCH_DIST_STRIP= -p1

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xmp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xxmp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/xmp.1 ${PREFIX}/man/man1
	@ln -sf xmp.1 ${PREFIX}/man/man1/xxmp.1

.include <bsd.port.mk>
