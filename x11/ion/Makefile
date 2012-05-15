# $OpenBSD: Makefile,v 1.55 2012/05/15 19:38:01 jasper Exp $

COMMENT=	light, keyboard friendly window manager

V=		20070318
DISTNAME=	ion-3ds-${V}
PKGNAME=	ion-${V}
REVISION=	3
CATEGORIES=	x11

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	http://modeemi.cs.tut.fi/~tuomov/dl/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE X11 m c SM Xext ${MODLUA_WANTLIB}

MODULES=	devel/gettext \
		lang/lua

LIB_DEPENDS=	${MODLUA_LIB_DEPENDS}

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
