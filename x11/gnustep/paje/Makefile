# $OpenBSD: Makefile,v 1.2 2012/08/22 07:15:52 sebastia Exp $

COMMENT =	GNUstep based trace visualization tool

DISTNAME =	Paje-1.98
REVISION =	0
SHARED_LIBS +=	General	0.0

HOMEPAGE =	http://paje.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
