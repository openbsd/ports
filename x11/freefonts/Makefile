# OpenBSD makefile for:	freefonts
# Version required:	0.10
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 2000/02/22 20:27:34 turan Exp $
#

DISTNAME=	freefonts-0.10
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/
NEED_VERSION=	1.191

MAINTAINER=	ports@OpenBSD.ORG

WRKDIST=	${WRKDIR}
USE_X11=	yes

post-install:
	@cat ${PKGDIR}/DESCR

.include <bsd.port.mk>
