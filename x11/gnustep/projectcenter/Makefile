# $OpenBSD: Makefile,v 1.2 2010/11/24 07:16:20 sebastia Exp $

COMMENT=	GNUstep integrated development environment

VERSION=	0.5.0
DISTNAME=	ProjectCenter-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 0.0

MODULES=	x11/gnustep
WANTLIB+=	c m pthread

MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

.include <bsd.port.mk>
