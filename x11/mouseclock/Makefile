# OpenBSD makefile for:	mouseclock
# Version required:	1.0
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:14 espie Exp $
#

DISTNAME=	mouseclock-1.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/clocks

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
USE_IMAKE=	yes
XMKMF=		xmkmf
NO_INSTALL_MANPAGES= yes

post-install:
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/mouseclock
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/mouseclock
.endif

.include <bsd.port.mk>
