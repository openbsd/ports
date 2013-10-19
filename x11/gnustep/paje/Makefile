# $OpenBSD: Makefile,v 1.5 2013/10/19 13:25:02 sebastia Exp $

COMMENT =	GNUstep based trace visualization tool

DISTNAME =	Paje-1.98
REVISION =	3
SHARED_LIBS +=	General	0.0

HOMEPAGE =	http://paje.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
