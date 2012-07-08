# $OpenBSD: Makefile,v 1.2 2012/07/08 14:15:11 sebastia Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
DISTNAME =	Renaissance-${VERSION}
REVISION =	0
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep
WANTLIB +=	c gnustep-base gnustep-gui m objc pthread

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
