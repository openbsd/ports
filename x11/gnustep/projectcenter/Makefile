# $OpenBSD: Makefile,v 1.22 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT=	GNUstep integrated development environment

VERSION =	0.6.2
REVISION =	8
DISTNAME=	ProjectCenter-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html
MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/dev-apps/

SHARED_LIBS=	ProjectCenter 1.1

RUN_DEPENDS +=	devel/gmake devel/gdb
MODULES=	x11/gnustep
WANTLIB +=	util
WANTLIB += ${COMPILER_LIBCXX}

LIBDIR =	lib/GNUstep/Frameworks/ProjectCenter.framework/Versions/${VERSION}
MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

SUBST_VARS +=	LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Modules/Preferences/Build/PCBuildPrefs.h \
		${WRKSRC}/Modules/Preferences/Misc/PCMiscPrefs.h

.include <bsd.port.mk>
