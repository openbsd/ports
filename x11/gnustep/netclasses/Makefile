# $OpenBSD: Makefile,v 1.5 2013/10/19 13:25:02 sebastia Exp $

COMMENT =	asynchronous networking framework for GNUstep

VERSION =	1.06
DISTNAME =	netclasses-${VERSION}
REVISION =	3
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
