# OpenBSD makefile for:	xmcd
# Version required:	2.2
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/08/05 08:51:35 form Exp $
#

DISTNAME=	xmcd-2.3
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xmcd

MAINTAINER=	form@vs.itam.nsc.ru

LIB_DEPENDS=    Xm\\.1\\.:${PORTSDIR}/x11/lesstif
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
