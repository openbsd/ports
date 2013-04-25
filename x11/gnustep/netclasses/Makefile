# $OpenBSD: Makefile,v 1.4 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	asynchronous networking framework for GNUstep

VERSION =	1.06
DISTNAME =	netclasses-${VERSION}
REVISION =	2
PKGNAME =	gnustep-netclasses-${VERSION}
CATEGORIES =	net
SHARED_LIBS +=  netclasses	0.0

HOMEPAGE =	http://netclasses.aeruder.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=netclasses/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	netclasses_INTERFACE_VERSION=${LIBnetclasses_VERSION}

.include <bsd.port.mk>
