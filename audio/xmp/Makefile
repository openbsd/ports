# OpenBSD makefile for:			xmp-1.1.5
# Version required:			1.1.5
# Date created:				Thu Jul 23 19:27:58 PDT 1998
# Whom:					downsj@openbsd.org
#
#	$OpenBSD: Makefile,v 1.1 1998/07/24 03:11:23 downsj Exp $
#

DISTNAME=	xmp-1.1.5
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/players

MAINTAINER=	downsj@openbsd.org

GNU_CONFIGURE=	YES
USE_GMAKE=	YES

PATCH_STRIP=	-p1
PATCH_DIST_STRIP=	-p1

MAN1=		docs/xmp.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xmp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/main/xxmp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/xmp.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
