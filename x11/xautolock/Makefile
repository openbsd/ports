# $OpenBSD: Makefile,v 1.15 2009/09/18 20:39:32 martynas Exp $

COMMENT= 		fire up programs in case of user inactivity under X

DISTNAME=		xautolock-2.2
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/screensavers/}

HOMEPAGE=		http://freshmeat.net/projects/xautolock/

MAINTAINER=		Matthieu Herrb <matthieu@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xss c

USE_X11=		Yes
CONFIGURE_STYLE=        imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
