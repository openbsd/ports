# $OpenBSD: Makefile,v 1.3 1999/04/09 04:12:00 brad Exp $
# $FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp $

DISTNAME=	viewfax-2.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

USE_IMAKE=	yes

MAINTAINER=	ports@openbsd.org

pre-install:
	@mkdir -p ${PREFIX}/lib/X11
	@mkdir -p ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
