# $OpenBSD: Makefile,v 1.10 2002/05/15 18:05:19 espie Exp $

DISTNAME=		xautolock-2.1
EXTRACT_SUFX=          .tgz
CATEGORIES=		x11
NEED_VERSION=		1.511
MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/screensavers/}

COMMENT= 		fire up programs in case of user inactivity under X
HOMEPAGE=		http://freshmeat.net/projects/xautolock/

MAINTAINER=		Matthieu Herrb <matthieu@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=        imake

.include <bsd.port.mk>
