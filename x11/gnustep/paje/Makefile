# $OpenBSD: Makefile,v 1.11 2017/04/21 17:26:32 sebastia Exp $

COMMENT =	GNUstep based trace visualization tool

REVISION =	9
DISTNAME =	Paje-1.98
SHARED_LIBS +=	General	0.0

HOMEPAGE =	http://paje.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
