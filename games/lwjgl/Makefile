# $OpenBSD: Makefile,v 1.3 2014/10/07 16:25:32 abieber Exp $

BROKEN-i386=	/usr/bin/ld: cannot find -ljawt

COMMENT=	lightweight game library for java

V=		2.9.1
REVISION=	0
GH_ACCOUNT=	LWJGL
GH_PROJECT=	lwjgl
GH_TAGNAME=	${GH_PROJECT}${V}
DISTNAME=	lwjgl${V}
PKGNAME=	lwjgl-${V}

.if ${MACHINE_ARCH} == "i386"
M_ARCH=		""
.elif ${MACHINE_ARCH} == "amd64"
M_ARCH=		64
.endif

LWJGL_HOME=	${PREFIX}/share/lwjgl

CATEGORIES=	games devel

HOMEPAGE=	http://lwjgl.org

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes

# GL listed here as it is dlopen()d by the lib
WANTLIB += GL X11 Xcursor Xext Xrandr Xxf86vm m pthread

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant
MODJAVA_JRERUN=	Yes

BUILD_DEPENDS=	audio/openal \
		devel/apache-ant

SHARED_ONLY=	Yes

NO_TEST=	Yes

ANT_CMD=	${SETENV} ${MAKE_ENV} PATH=${JAVA_HOME}/bin:${PATH} \
		${LOCALBASE}/bin/ant

SUBST_VARS+=	M_ARCH

pre-configure:
	perl -pi -e 's,/usr/X11R6,${X11BASE},g' \
		${WRKSRC}/platform_build/bsd_ant/build.xml
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/platform_build/bsd_ant/build.xml

do-build:
	cd ${WRKSRC} && ${ANT_CMD}

do-install:
	${INSTALL_DATA_DIR} ${LWJGL_HOME}
	${INSTALL_DATA} ${WRKSRC}/libs/lwjgl.jar ${LWJGL_HOME}/
	${INSTALL_DATA} ${WRKSRC}/libs/lwjgl_util.jar ${LWJGL_HOME}/
	${INSTALL_DATA} ${WRKSRC}/libs/openbsd/liblwjgl${M_ARCH}.so ${LWJGL_HOME}/

.include <bsd.port.mk>
