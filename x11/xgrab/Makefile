# OpenBSD makefile for:    xgrab
# Version required:     2.41
# Date created:         25 January 1998
# Whom:                 Angelos
#
# $OpenBSD: Makefile,v 1.2 1998/01/25 22:01:44 angelos Exp $
#

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  -f
# Needs to actually *run* xrdb
#IS_INTERACTIVE=	yes
# "make depend" blows up
XMKMF=		xmkmf

.include <bsd.port.mk>
