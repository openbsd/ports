# $OpenBSD: Makefile,v 1.19 2013/03/11 11:46:17 espie Exp $

COMMENT= 		fire up programs in case of user inactivity under X

DISTNAME=		xautolock-2.2
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/screensavers/}

HOMEPAGE=		http://freshmeat.net/projects/xautolock/

MAINTAINER=		Matthieu Herrb <matthieu@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xss c

USE_GROFF =		Yes
CONFIGURE_STYLE=        imake

NO_TEST=		Yes

.include <bsd.port.mk>
