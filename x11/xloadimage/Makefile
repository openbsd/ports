# OpenBSD makefile for: xloadimage
# Version required:     3.03
# Date created:         December 17, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2000/04/03 20:34:53 espie Exp $
#

DISTNAME=	xloadimage
PKGNAME=	xloadimage-3.03
CATEGORIES=	x11
NEED_VERSION=	1.195
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/X11-contrib/
DISTFILES=	xloadimage.3.03.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
USE_IMAKE=	Yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults
FAKE_FLAGS=	${MAKE_FLAGS}
FAKE=		Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
