# $OpenBSD: Makefile,v 1.6 2017/04/21 13:27:46 kurt Exp $

COMMENT=	lightweight game library for java

V=		2.9.3
GH_ACCOUNT=	LWJGL
GH_PROJECT=	lwjgl
GH_TAGNAME=	${GH_PROJECT}${V}
DISTNAME=	lwjgl${V}
PKGNAME=	lwjgl-${V}
REVISION=	0

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
	for x in ${WRKSRC}/libs/*.jar; do \
		${INSTALL_DATA} $$x ${LWJGL_HOME}/; \
	done
	${INSTALL_DATA} ${WRKSRC}/libs/openbsd/liblwjgl${M_ARCH}.so ${LWJGL_HOME}/

.include <bsd.port.mk>
