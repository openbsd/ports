# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:22 sthen Exp $

COMMENT =		open-source real-time strategy game engine
V =			20190314
DISTNAME =		openra-${V}
CATEGORIES =		games x11
HOMEPAGE =		https://www.openra.net
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>
REVISION =		2

# GPLv3 (openra)
# MIT (StyleCopPlus, StyleCop, SharpZipLib, NUnit, NUnit.Console, Open.Nat,
# Eluant, rix0rrr.BeaconLib)
# Apache-2.0 (MaxMind.Db)
# GPLv2 (FuzzyLogicLibrary)
# zlib (SDL2-CS, OpenAL-CS)
PERMIT_PACKAGE =	Yes

# dlopen'd via mono-config(5)
WANTLIB +=	SDL2 freetype openal

MASTER_SITES =  	https://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/lua \
			lang/mono

DLLMAP_FILES =		thirdparty/download/OpenAL-CS.dll.config \
			thirdparty/download/SDL2-CS.dll.config \
			thirdparty/download/SharpFont.dll.config

MODLUA_VERSION =	5.1
MODLUA_SA =		Yes
BUILD_DEPENDS =		net/curl
RUN_DEPENDS =		devel/desktop-file-utils \
			net/libmaxminddb,-db \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/openal \
			devel/sdl2
USE_GMAKE =		Yes
# Target 'test' only checks the official mods for erroneous yaml files
NO_TEST =		Yes

SUBST_VARS +=		LOCALSTATEDIR

do-gen:
	${SUBST_CMD} ${WRKSRC}/launch-game.sh
	${SUBST_CMD} ${WRKSRC}/launch-dedicated.sh
	${SUBST_CMD} ${WRKSRC}/OpenRA.Game/Network/GeoIP.cs

post-install:
	cd ${WRKSRC} && ${MAKE_PROGRAM} install-linux-shortcuts
	${INSTALL_SCRIPT} ${WRKSRC}/launch-game.sh ${PREFIX}/bin/openra
	${INSTALL_SCRIPT} ${WRKSRC}/launch-dedicated.sh \
		${PREFIX}/bin/openra-dedicated

.include <bsd.port.mk>
