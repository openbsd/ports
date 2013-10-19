# $OpenBSD: Makefile,v 1.5 2013/10/19 13:25:03 sebastia Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
DISTNAME =	Renaissance-${VERSION}
REVISION =	3
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep
WANTLIB +=	c gnustep-base gnustep-gui m objc2 pthread

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
