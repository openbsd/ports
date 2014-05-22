# $OpenBSD: Makefile,v 1.6 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
DISTNAME =	Renaissance-${VERSION}
REVISION =	4
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
