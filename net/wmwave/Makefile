# $OpenBSD: Makefile,v 1.1.1.1 2001/03/14 14:10:49 wilfried Exp $

DISTNAME=	wmwave-0-4
PKGNAME=	wmwave-0.4
EXTRACT_SUFX=	.tgz
HOMEPAGE=	http://www.schuermann.org/~dockapps/
MASTER_SITES=	${HOMEPAGE}dist/ \
		ftp://rt.fm/pub/wmwave/

CATEGORIES=	net x11 x11/windowmaker
NEED_VERSION=	1.359

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
