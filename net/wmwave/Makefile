# $OpenBSD: Makefile,v 1.18 2016/12/25 16:49:12 jca Exp $

COMMENT=	Window Maker dockapp to display wavelan statistics

DISTNAME=	wmwave-0-4
PKGNAME=	wmwave-0.4
REVISION=	3

CATEGORIES=	net x11 x11/windowmaker

HOMEPAGE=	http://wmwave.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xext Xpm c m pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wmwave/}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
