# $OpenBSD: Makefile,v 1.8 2002/03/21 20:57:07 espie Exp $

COMMENT=		'wm-dockapp; xeyes variant'

DISTNAME=		wmeyes
PKGNAME=		${DISTNAME}-0.0
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://home.istar.ca/~jenora/wmeyes.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=		http://home.istar.ca/~jenora/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

WRKDIST=		${WRKDIR}

.include <bsd.port.mk>
