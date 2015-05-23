# $OpenBSD: Makefile,v 1.5 2015/05/23 10:53:24 czarkoff Exp $

COMMENT=	wrapper for a game about breaking and placing blocks

V=		0.0.4
GH_PROJECT=	minecraft
GH_ACCOUNT=	qbit
GH_TAGNAME=	${GH_PROJECT}-${V}
DISTNAME=	${GH_TAGNAME}
REVISION=	3

CATEGORIES=	games

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.7+

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS= 	devel/desktop-file-utils \
		games/lwjgl \
		java/javaPathHelper \
		x11/gtk+3,-guic

MAKE_FLAGS=	PREFIX=${PREFIX}

do-configure:
	${SUBST_CMD} ${WRKSRC}/minecraft

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/ \
		${PREFIX}/share/applications/
	${INSTALL_SCRIPT} ${WRKSRC}/minecraft ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/minecraft.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/minecraft.desktop \
		${PREFIX}/share/applications/minecraft.desktop

.include <bsd.port.mk>
