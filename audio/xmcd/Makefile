# $OpenBSD: Makefile,v 1.6 1998/11/30 03:39:05 form Exp $
#

DISTNAME=		xmcd-2.3
CATEGORIES=		audio

MAINTAINER=		form@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xmcd

USE_MOTIF=		yes
USE_IMAKE=		yes
IS_INTERACTIVE=		yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
