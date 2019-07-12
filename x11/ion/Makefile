# $OpenBSD: Makefile,v 1.67 2019/07/12 20:51:14 sthen Exp $

COMMENT=	light, keyboard friendly window manager

V=		20090110
DISTNAME=	ion-3-${V}
PKGNAME=	ion-${V}
CATEGORIES=	x11
REVISION=	4
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	http://tuomov.iki.fi/software/dl/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext c iconv intl lua5.1 m

MODULES=	lang/lua
MODLUA_SA=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	${MODLUA_LIB_DEPENDS} \
		devel/gettext,-runtime

USE_GMAKE=	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/system.mk

.include <bsd.port.mk>
