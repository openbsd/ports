COMMENT =	GNUstep based trace visualization tool

REVISION =	17
DISTNAME =	Paje-1.98
SHARED_LIBS +=	General	0.0

HOMEPAGE =	https://paje.sourceforge.net/
SITES =		${SITE_SOURCEFORGE:=paje/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
MAKE_FLAGS +=	General_INTERFACE_VERSION=${LIBGeneral_VERSION}

GENERALLIBDIR =	lib/GNUstep/Frameworks/General.framework/Versions/${LIBGeneral_VERSION}

SUBST_VARS +=	GENERALLIBDIR

.include <bsd.port.mk>
