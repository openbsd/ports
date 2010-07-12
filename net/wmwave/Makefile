# $OpenBSD: Makefile,v 1.13 2010/07/12 22:07:42 sthen Exp $

DISTNAME=	wmwave-0-4
PKGNAME=	wmwave-0.4
REVISION=	3
CATEGORIES=	net x11 x11/windowmaker

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb

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
