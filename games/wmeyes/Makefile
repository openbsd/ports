# $OpenBSD: Makefile,v 1.2 2001/01/17 16:13:30 naddy Exp $

DISTNAME=	wmeyes
PKGNAME=	${DISTNAME}-0.0
CATEGORIES=	games x11
NEED_VERSION=	1.340
MASTER_SITES=	http://home.istar.ca/~jenora/
EXTRACT_SUFX=	.tgz
HOMEPAGE=	http://home.istar.ca/~jenora/wmeyes.html

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}

USE_X11=	Yes
CONFIGURE_STYLE=	imake noman

.include <bsd.port.mk>
