# $OpenBSD: Makefile,v 1.50 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=	light, keyboard friendly window manager

V=		20070318
DISTNAME=	ion-3ds-${V}
PKGNAME=	ion-${V}
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	http://modeemi.cs.tut.fi/~tuomov/dl/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE X11 m c SM Xext
MODULES=	devel/gettext
LIB_DEPENDS=	lua.>=5.1::lang/lua

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
