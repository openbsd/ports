# $OpenBSD: Makefile,v 1.10 2003/02/26 12:00:43 wilfried Exp $

COMMENT=		'wm-dockapp; xeyes variant'

DISTNAME=		wmeyes
PKGNAME=		${DISTNAME}-0.0
CATEGORIES=		games x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=		http://w1.402.telia.com/~u40214514/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

WRKDIST=		${WRKDIR}

.include <bsd.port.mk>
