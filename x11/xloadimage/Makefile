# OpenBSD makefile for: xloadimage
# Version required:     3.03
# Date created:         December 17, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:38 espie Exp $
#

DISTNAME=	xloadimage
PKGNAME=	xloadimage-3.03
CATEGORIES=	x11
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/X11-contrib/
DISTFILES=	xloadimage.3.03.tar.Z
NEED_VERSION=	1.191

MAINTAINER=	don@OpenBSD.ORG

WRKDIST=	${WRKDIR}
USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults -f

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
