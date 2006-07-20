# $OpenBSD: Makefile,v 1.13 2006/07/20 04:43:28 steven Exp $

COMMENT=		'wm-dockapp; displays scrolling text'

DISTNAME=		wminfo-1.51
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
