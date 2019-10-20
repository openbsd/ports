# $OpenBSD: Makefile,v 1.14 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	GNUstep layer to write portable GUIs

VERSION =	0.9.0
REVISION =	12
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
