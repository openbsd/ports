# OpenBSD makefile for:	freefonts
# Version required:	0.10
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.4 2000/03/24 22:12:04 espie Exp $
#

DISTNAME=	freefonts-0.10
CATEGORIES=	x11
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/

MAINTAINER=	ports@OpenBSD.ORG

WRKDIST=	${WRKDIR}
USE_X11=	yes

post-install:
	@cat ${PKGDIR}/DESCR

.include <bsd.port.mk>
