# $OpenBSD: Makefile,v 1.2 1999/05/04 03:03:46 brad Exp $

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	angelos@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=      yes

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
