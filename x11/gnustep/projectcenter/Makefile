COMMENT=	GNUstep integrated development environment

GH_TAGNAME=     0.7.0
GH_ACCOUNT=     gnustep
GH_PROJECT=     apps-projectcenter
DISTNAME=       ProjectCenter-${GH_TAGNAME}
CATEGORIES=	devel
REVISION=       0

HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html

#SITES=		http://ftp.gnustep.org/pub/gnustep/dev-apps/
SITES=		https://github.com/gnustep/apps-projectcenter/releases/download/projectcenter-0_7_0/

SHARED_LIBS=	ProjectCenter 1.2

RUN_DEPENDS +=	devel/gmake devel/gdb
MODULES=	x11/gnustep
WANTLIB +=	util
WANTLIB += ${COMPILER_LIBCXX}

LIBDIR =	lib/GNUstep/Frameworks/ProjectCenter.framework/Versions/${GH_TAGNAME}
MAKE_FLAGS=	ProjectCenter_VERSION=${VERSION} \
		ProjectCenter_INTERFACE_VERSION=${LIBProjectCenter_VERSION}

SUBST_VARS +=	LIBDIR

WRKDIST=	${WRKDIR}/${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Modules/Preferences/Build/PCBuildPrefs.h \
		${WRKSRC}/Modules/Preferences/Misc/PCMiscPrefs.h

.include <bsd.port.mk>
