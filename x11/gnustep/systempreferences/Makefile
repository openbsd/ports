# $OpenBSD: Makefile,v 1.1.1.1 2010/12/22 12:21:23 sebastia Exp $

COMMENT =	manage settings of the gnustep environment

DISTNAME =	SystemPreferences-1.1.0
PKGNAME =	${DISTNAME:L}
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep
WANTLIB =	c m pthread

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
