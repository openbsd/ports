# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:13 espie Exp $

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	angelos@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=      yes

post-install:
	@mkdir -p ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
