# $OpenBSD: Makefile,v 1.12 2014/05/22 09:48:57 sebastia Exp $

COMMENT=	GNUstep integrated development environment

DISTNAME=	ProjectCenter-0.6.1
REVISION =	4
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 1.0

RUN_DEPENDS +=	devel/gmake devel/gdb
MODULES=	x11/gnustep
WANTLIB +=	util

LIBDIR =	lib/GNUstep/Frameworks/ProjectCenter.framework/Versions/0.6.0
MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

SUBST_VARS +=	LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Modules/Preferences/Build/PCBuildPrefs.h \
		${WRKSRC}/Modules/Preferences/Misc/PCMiscPrefs.h

.include <bsd.port.mk>
