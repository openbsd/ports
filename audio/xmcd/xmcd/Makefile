# OpenBSD makefile for:	xmcd
# Version required:	2.2
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/21 01:38:04 angelos Exp $
#

DISTNAME=	xmcd-2.2
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xmcd

MAINTAINER=	angelos@openbsd.org

REQUIRES_MOTIF=	yes
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
