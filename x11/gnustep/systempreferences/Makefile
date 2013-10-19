# $OpenBSD: Makefile,v 1.7 2013/10/19 13:25:05 sebastia Exp $

COMMENT =	manage settings of the gnustep environment

DISTNAME =	SystemPreferences-1.1.0
REVISION =	4
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep
WANTLIB =	c m pthread

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
