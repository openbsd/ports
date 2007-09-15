# $OpenBSD: Makefile,v 1.11 2007/09/15 22:37:00 merdely Exp $

PKGNAME=	wmwave-0.4p2
DISTNAME=	wmwave-0-4
CATEGORIES=	net x11 x11/windowmaker

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m 

COMMENT=	Window Maker dockapp to display wavelan statistics
HOMEPAGE=	http://wmwave.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wmwave/}
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
