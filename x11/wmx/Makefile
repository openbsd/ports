# $OpenBSD: Makefile,v 1.4 2000/02/15 05:05:32 turan Exp $

DISTNAME=	wmx-5
PKGNAME=        wmx-5.0

CATEGORIES=	x11

MASTER_SITES=	http://www.all-day-breakfast.com/wmx/ \
		ftp://ftp.tu-clausthal.de/pub/unix.new/x11-wm/ \
		ftp://ftp.maths.tcd.ie/src/eoin-tmp/window_managers/

MAINTAINER=	jakob@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_X11=	yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
