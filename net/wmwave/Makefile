# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:20 espie Exp $

PKGNAME=	wmwave-0.4
DISTNAME=	wmwave-0-4
CATEGORIES=	net x11 x11/windowmaker
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Window Maker dockapp to display wavelan statistics"
HOMEPAGE=	http://www.schuermann.org/~dockapps/
MASTER_SITES=	ftp://rt.fm/pub/wmwave/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
