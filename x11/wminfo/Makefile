# $OpenBSD: Makefile,v 1.16 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=		wm-dockapp; displays scrolling text

DISTNAME=		wminfo-1.51
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
