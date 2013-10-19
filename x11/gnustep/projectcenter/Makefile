# $OpenBSD: Makefile,v 1.10 2013/10/19 09:15:00 sebastia Exp $

COMMENT=	GNUstep integrated development environment

DISTNAME=	ProjectCenter-0.6.1
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 1.0

RUN_DEPENDS +=	devel/gmake devel/gdb
MODULES=	x11/gnustep
WANTLIB+=	c m pthread util

LIBDIR =	lib/GNUstep/Frameworks/ProjectCenter.framework/Versions/0.6.0
MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

SUBST_VARS +=	LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Modules/Preferences/Build/PCBuildPrefs.h \
		${WRKSRC}/Modules/Preferences/Misc/PCMiscPrefs.h	

.include <bsd.port.mk>
