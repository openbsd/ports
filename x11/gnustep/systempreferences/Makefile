# $OpenBSD: Makefile,v 1.16 2018/11/26 14:17:13 sebastia Exp $

COMMENT =	manage settings of the gnustep environment

REVISION =	7
DISTNAME =	SystemPreferences-1.2.0
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
