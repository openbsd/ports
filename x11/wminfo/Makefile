# $OpenBSD: Makefile,v 1.12 2004/12/19 17:27:03 alek Exp $

COMMENT=		'wm-dockapp; displays scrolling text'

DISTNAME=		wminfo-1.51
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://kling.mine.nu/wminfo.htm

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://kling.mine.nu/files/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wminfo
WRKSRC=			${WRKDIST}/wminfo

.include <bsd.port.mk>
