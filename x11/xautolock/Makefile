# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:25 sthen Exp $

COMMENT= 		fire up programs in case of user inactivity under X

DISTNAME=		xautolock-2.2
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11
FIX_EXTRACT_PERMISSIONS=Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/screensavers/}

HOMEPAGE=		http://freshmeat.net/projects/xautolock/

MAINTAINER=		Matthieu Herrb <matthieu@openbsd.org>

# License: GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xss c

CONFIGURE_STYLE=        imake

NO_TEST=		Yes

.include <bsd.port.mk>
