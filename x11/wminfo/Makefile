# $OpenBSD: Makefile,v 1.8 2002/05/15 09:30:22 wilfried Exp $

COMMENT=		'wm-dockapp; displays scrolling text'

DISTNAME=		wminfo-1.51
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://boombox.campus.luth.se/wminfo.htm

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://boombox.campus.luth.se/files/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
