# $OpenBSD: Makefile,v 1.2 2001/04/03 22:25:01 naddy Exp $

COMMENT=	"Window Maker dockapp to display wavelan statistics"

PKGNAME=	wmwave-0.4
DISTNAME=	wmwave-0-4
HOMEPAGE=	http://www.schuermann.org/~dockapps/

CATEGORIES=	net x11 x11/windowmaker
NEED_VERSION=	1.363

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://rt.fm/pub/wmwave/
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
