# OpenBSD makefile for: xloadimage
# Version required:     3.03
# Date created:         December 17, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:06 espie Exp $
#

DISTNAME=	xloadimage
PKGNAME=	xloadimage-3.03
CATEGORIES=	x11
NEED_VERSION=	1.195
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/X11-contrib/
DISTFILES=	xloadimage.3.03.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}
USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
