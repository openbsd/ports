# $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 17:35:36 sebastia Exp $

COMMENT=	GNUstep integrated development environment

DISTNAME=	ProjectCenter-0.5.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 0.0

MODULES=	x11/gnustep
WANTLIB+=	c m pthread

MAKE_FLAGS=	ProjectCenter_VERSION=${LIBProjectCenter_VERSION}

.include <bsd.port.mk>
