# $OpenBSD: Makefile,v 1.8 1999/09/06 18:57:52 brad Exp $

DISTNAME=	xmcd-2.3
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/xmcd

MAINTAINER=	ports@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
