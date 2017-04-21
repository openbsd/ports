# $OpenBSD: Makefile,v 1.14 2017/04/21 17:26:32 sebastia Exp $

COMMENT =	manage settings of the gnustep environment

REVISION =	5
DISTNAME =	SystemPreferences-1.2.0
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
