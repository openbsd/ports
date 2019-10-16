# $OpenBSD: Makefile,v 1.13 2019/10/16 13:45:06 ajacoutot Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
REVISION =	11
DISTNAME =	Renaissance-${VERSION}
PKGNAME =	gnustep-renaissance-${VERSION}

SHARED_LIBS +=  Renaissance	0.0

CATEGORIES =	devel
HOMEPAGE =	http://www.gnustep.it/Renaissance/
MASTER_SITES =	${HOMEPAGE:=Download/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FLAGS =	Renaissance_INTERFACE_VERSION=${LIBRenaissance_VERSION}

.include <bsd.port.mk>
