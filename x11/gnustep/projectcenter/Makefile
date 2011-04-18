# $OpenBSD: Makefile,v 1.5 2011/04/18 12:41:18 sebastia Exp $

COMMENT=	GNUstep integrated development environment

VERSION=	0.6.0
DISTNAME=	ProjectCenter-${VERSION}
PKGNAME=	${DISTNAME:L}
REVISION =	1
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 1.0

MODULES=	x11/gnustep
WANTLIB+=	c m pthread util

MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

SUBST_VARS +=	VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Modules/Preferences/Build/PCBuildPrefs.h

.include <bsd.port.mk>
