# $OpenBSD: Makefile,v 1.48 2007/04/30 16:09:48 pedro Exp $

COMMENT=	"light, keyboard friendly window manager"

V=		20070318
DISTNAME=	ion-3ds-${V}
PKGNAME=	ion-${V}p1
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
