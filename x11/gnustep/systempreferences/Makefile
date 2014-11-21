# $OpenBSD: Makefile,v 1.10 2014/11/21 18:21:22 sebastia Exp $

COMMENT =	manage settings of the gnustep environment

DISTNAME =	SystemPreferences-1.2.0
REVISION =	1
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
