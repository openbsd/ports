# OpenBSD makefile for:    		mgdiff
# Version required:     		1.0
# Date created:         		May 21 1998
# Whom:                 		Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/22 01:16:52 angelos Exp $
#

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	angelos@openbsd.org

REQUIRES_MOTIF=	yes
USE_IMAKE=      yes

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
