# $OpenBSD: Makefile,v 1.9 2016/03/05 16:04:09 pascal Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
REVISION =	7
DISTNAME =	Renaissance-${VERSION}
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
