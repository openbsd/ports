# $OpenBSD: Makefile,v 1.9 2002/03/19 19:45:15 matthieu Exp $

DISTNAME=		xautolock-2.1
EXTRACT_SUFX=          .tgz
CATEGORIES=		x11
NEED_VERSION=		1.511
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=     X11/screensavers

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
