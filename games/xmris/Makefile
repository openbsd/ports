# OpenBSD makefile for:    xmris
# Version required:     4.02
# Date created:         February 5, 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/02/05 17:54:11 angelos Exp $

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
USE_IMAKE=      yes
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults -f
ALL_TARGET=	xmris

.include <bsd.port.mk>
