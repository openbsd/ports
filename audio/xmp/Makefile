# $OpenBSD: Makefile,v 1.13 2001/04/05 19:31:41 espie Exp $

COMMENT=	"extended Module Player; many formats plus an X11 display"
DISTNAME=	xmp-1.1.5
CATEGORIES=	audio
NEED_VERSION=	1.363
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/players

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_DIST_STRIP= -p1

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xmp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xxmp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/xmp.1 ${PREFIX}/man/man1
	@ln -sf xmp.1 ${PREFIX}/man/man1/xxmp.1

.include <bsd.port.mk>
