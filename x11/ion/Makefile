# $OpenBSD: Makefile,v 1.61 2014/03/23 18:17:35 kili Exp $

COMMENT=	light, keyboard friendly window manager

V=		20090110
DISTNAME=	ion-3-${V}
PKGNAME=	ion-${V}
CATEGORIES=	x11
REVISION=	1

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	http://tuomov.iki.fi/software/dl/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE X11 m c SM Xext ${MODLUA_WANTLIB}

MODULES=	devel/gettext \
		lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	${MODLUA_LIB_DEPENDS}

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/system.mk

.include <bsd.port.mk>
