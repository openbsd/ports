# OpenBSD makefile for:    xfed
# Date created:         May 18 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/19 03:55:37 angelos Exp $
#

DISTNAME=	xfed
PKGNAME=	xfed-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.demon.co.uk/pub/graphics/systems/X11.old/pub/R6untarred/contrib/programs/

MAINTAINER=	angelos@opensbd.org

USE_IMAKE=	yes
MAKE_FLAGS=	MANDIR=${PREFIX}/man/man1
BINDIR=${PREFIX}/bin -f

pre-clean:
	-rm -rf ${.CURDIR}/src

.include <bsd.port.mk>
