# $OpenBSD: Makefile,v 1.2 1999/07/28 19:14:05 jakob Exp $

DISTNAME=	wmx-5
PKGNAME=        wmx-5.0

CATEGORIES=	x11

MASTER_SITES=	http://www.all-day-breakfast.com/wmx/ \
		ftp://ftp.tu-clausthal.de/pub/unix.new/x11-wm/ \
		ftp://ftp.maths.tcd.ie/src/eoin-tmp/window_managers/

MAINTAINER=	jakob@openbsd.org

USE_X11=	yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
