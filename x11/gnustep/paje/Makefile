# $OpenBSD: Makefile,v 1.3 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	GNUstep based trace visualization tool

DISTNAME =	Paje-1.98
REVISION =	1
SHARED_LIBS +=	General	0.0

HOMEPAGE =	http://paje.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
