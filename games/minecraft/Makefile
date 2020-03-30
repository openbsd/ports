# $OpenBSD: Makefile,v 1.14 2020/03/30 14:10:37 kmos Exp $

PORTROACH=	skipv:0.1
PORTROACH_COMMENT=version 0.1 is actually older than 0.0.4

COMMENT=	wrapper for a game about breaking and placing blocks

V=		0.0.6
GH_PROJECT=	minecraft
GH_ACCOUNT=	qbit
GH_TAGNAME=	${GH_PROJECT}-${V}
DISTNAME=	${GH_TAGNAME}
REVISION=	9

CATEGORIES=	games

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.8+

# BSD
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	audio/openal \
		devel/desktop-file-utils \
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
