# $OpenBSD: Makefile,v 1.18 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	manage settings of the gnustep environment

REVISION =	9
DISTNAME =	SystemPreferences-1.2.0
CATEGORIES =	sysutils
SHARED_LIBS =	PreferencePanes 0.0

HOMEPAGE =	http://www.gnustep.org/experience/systempreferences.html
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FLAGS =	PreferencePanes_INTERFACE_VERSION=${LIBPreferencePanes_VERSION}

.include <bsd.port.mk>
