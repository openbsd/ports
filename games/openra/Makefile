# $OpenBSD: Makefile,v 1.2 2019/04/02 18:52:40 ajacoutot Exp $

COMMENT =		open-source real-time strategy game engine
V =			20190314
DISTNAME =		openra-${V}
CATEGORIES =		games x11
HOMEPAGE =		https://www.openra.net
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>
REVISION =		0

# GPLv3 (openra)
# MIT (StyleCopPlus, StyleCop, SharpZipLib, NUnit, NUnit.Console, Open.Nat,
# Eluant, rix0rrr.BeaconLib)
# Apache-2.0 (MaxMind.Db)
# GPLv2 (FuzzyLogicLibrary)
# zlib (SDL2-CS, OpenAL-CS)
PERMIT_PACKAGE_CDROM =	Yes

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
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/openal \
			devel/sdl2
USE_GMAKE =		Yes
# Target 'test' only checks the official mods for erroneous yaml files
NO_TEST =		Yes

do-gen:
	${SUBST_CMD} ${WRKSRC}/launch-game.sh
	${SUBST_CMD} ${WRKSRC}/launch-dedicated.sh

post-install:
	cd ${WRKSRC} && ${MAKE_PROGRAM} install-linux-shortcuts
	${INSTALL_SCRIPT} ${WRKSRC}/launch-game.sh ${PREFIX}/bin/openra
	${INSTALL_SCRIPT} ${WRKSRC}/launch-dedicated.sh \
		${PREFIX}/bin/openra-dedicated

.include <bsd.port.mk>
