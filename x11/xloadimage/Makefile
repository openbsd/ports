# OpenBSD makefile for: xloadimage
# Version required:     3.03
# Date created:         December 17, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.4 2000/02/12 06:30:08 turan Exp $
#

DISTNAME=	xloadimage
PKGNAME=	xloadimage-3.03
CATEGORIES=	x11
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/X11-contrib/
DISTFILES=	xloadimage.3.03.tar.Z
NEED_VERSION=	1.195

MAINTAINER=	don@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=	${WRKDIR}
USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
