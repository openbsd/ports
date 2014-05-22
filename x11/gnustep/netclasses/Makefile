# $OpenBSD: Makefile,v 1.6 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	asynchronous networking framework for GNUstep

VERSION =	1.06
DISTNAME =	netclasses-${VERSION}
REVISION =	4
PKGNAME =	gnustep-netclasses-${VERSION}
CATEGORIES =	net
SHARED_LIBS +=  netclasses	0.0

HOMEPAGE =	http://netclasses.aeruder.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=netclasses/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 		pthread

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	netclasses_INTERFACE_VERSION=${LIBnetclasses_VERSION}

.include <bsd.port.mk>
