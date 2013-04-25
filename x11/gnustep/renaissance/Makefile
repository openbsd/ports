# $OpenBSD: Makefile,v 1.4 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
DISTNAME =	Renaissance-${VERSION}
REVISION =	2
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep
WANTLIB +=	c gnustep-base gnustep-gui m objc2 pthread

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
