# $OpenBSD: Makefile,v 1.7 1999/04/09 04:11:45 brad Exp $

DISTNAME=	xmcd-2.3
CATEGORIES=	audio

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xmcd

USE_MOTIF=	yes
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
