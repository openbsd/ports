# New ports collection makefile for:    viewfax
# Version required:     2.3
# Date created:         14 Apr 1998
# Whom:                 form
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/14 03:34:56 form Exp $
# FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp
#
DISTNAME=	viewfax-2.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

USE_IMAKE=	yes

MAINTAINER=	form@vs.itam.nsc.ru

pre-install:
	@mkdir -p ${PREFIX}/lib/X11
	@mkdir -p ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
