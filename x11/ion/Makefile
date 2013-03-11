# $OpenBSD: Makefile,v 1.58 2013/03/11 11:46:13 espie Exp $

COMMENT=	light, keyboard friendly window manager

V=		20070318
DISTNAME=	ion-3ds-${V}
PKGNAME=	ion-${V}
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	http://modeemi.cs.tut.fi/~tuomov/dl/

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
