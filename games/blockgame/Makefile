# $OpenBSD: Makefile,v 1.1.1.1 2022/02/18 08:36:39 phessler Exp $

COMMENT =		free and open-source launcher for Minecraft


V =			0.6.14.1
DISTNAME =		blockgame-${V}
MASTER_SITES =		https://github.com/yukiisbored/Launcher/releases/download/${V}-bgl/

CATEGORIES =		games

HOMEPAGE =		https://github.com/yukiisbored/Launcher

MAINTAINER =		Muhammad Kaisar Arkhan <hi@yukiisbo.red>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui
WANTLIB +=		Qt5Network Qt5Widgets Qt5Xml c m z

MODULES =		devel/cmake \
			x11/qt5 \
			java
MODJAVA_VER =		17

RUN_DEPENDS =		audio/openal \
			games/lwjgl3

CONFIGURE_ARGS =	-DBGL_MSA_CLIENT_ID="4337e89c-ef12-4ff0-8aff-39adfc5a8e77" \
			-DBGL_SYSTEM_LWJGL2_PATH="${LOCALBASE}/share/lwjgl/" \
			-DBGL_SYSTEM_LWJGL3_PATH="${LOCALBASE}/share/lwjgl3/"

WRKDIST =		${WRKDIR}/Launcher

.include <bsd.port.mk>
