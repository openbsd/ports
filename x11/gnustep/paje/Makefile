# $OpenBSD: Makefile,v 1.6 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep based trace visualization tool

DISTNAME =	Paje-1.98
REVISION =	4
SHARED_LIBS +=	General	0.0

HOMEPAGE =	http://paje.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
