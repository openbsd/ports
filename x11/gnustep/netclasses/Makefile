# $OpenBSD: Makefile,v 1.13 2017/04/22 17:27:41 sebastia Exp $

COMMENT =	asynchronous networking framework for GNUstep

VERSION =	1.1.0
REVISION =	3
EPOCH =		0
DISTNAME =	netclasses-${VERSION}
PKGNAME =	gnustep-netclasses-${VERSION}
CATEGORIES =	net
SHARED_LIBS +=  netclasses	0.0

HOMEPAGE =	http://gap.nongnu.org/talksoup/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 		pthread

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	netclasses_INTERFACE_VERSION=${LIBnetclasses_VERSION}

.include <bsd.port.mk>
