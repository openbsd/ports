# $OpenBSD: Makefile,v 1.10 1999/10/29 09:40:15 turan Exp $

BROKEN=		spinlocks in a loop if stdin is null

DISTNAME=	xmcd-2.3
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/xmcd

MAINTAINER=	ports@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions
NO_PACKAGE=	interactive port

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
