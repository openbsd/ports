# OpenBSD makefile for:    xgrab
# Version required:     2.41
# Date created:         25 January 1998
# Whom:                 Angelos
#
# $OpenBSD: Makefile,v 1.4 2000/02/12 00:44:01 espie Exp $
#

BROKEN=		port wants to open display during build.

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications
EXTRACT_SUFX=	.tar.Z
NEED_VERSION=	1.195

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults 
# Needs to actually *run* xrdb
#IS_INTERACTIVE=	yes
# "make depend" blows up
XMKMF=		xmkmf

.include <bsd.port.mk>
