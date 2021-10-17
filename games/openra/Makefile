# $OpenBSD: Makefile,v 1.9 2021/10/17 13:06:59 kn Exp $

COMMENT =		open-source real-time strategy game engine
V =			20210321
REVISION =		0
DISTNAME =		openra-${V}
CATEGORIES =		games x11
HOMEPAGE =		https://www.openra.net
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3 (openra)
# MIT (StyleCopPlus, StyleCop, SharpZipLib, NUnit, NUnit.Console, Open.Nat,
# Eluant, rix0rrr.BeaconLib)
# Apache-2.0 (MaxMind.Db)
# GPLv2 (FuzzyLogicLibrary)
# zlib (SDL2-CS, OpenAL-CS)
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		openra

# dlopen'd via mono-config(5)
WANTLIB +=	SDL2 freetype openal

MASTER_SITES = 		https://thfr.info/distfiles/
MASTER_SITES0 = 	https://thfr.info/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			nuget-${DISTNAME}${EXTRACT_SUFX}:0
EXTRACT_SUFX =		.tar.xz

FIX_CRLF_FILES =	thirdparty/download/SharpFont.dll.config

MODULES =		lang/lua \
			lang/mono

MODLUA_VERSION =	5.1
MODLUA_SA =		Yes
BUILD_DEPENDS =		devel/msbuild \
			net/curl
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			net/libmaxminddb,-db \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/openal \
			devel/sdl2
USE_GMAKE =		Yes
# Target 'test' only checks the official mods for erroneous yaml files
NO_TEST =		Yes
ALL_TARGET =	version all

# Without GIT_COMMIT, build breaks because of empty $(GitHeadSha)
MAKE_ENV =		NUGET_PACKAGES=${WRKDIR}/nuget-${DISTNAME} \
			GIT_COMMIT=3c930fa8721935cf0e381fd349f6f50cf2bc223d
# pass a different $HOME so that the build's NuGet doesn't try to write in $HOME
MAKE_FLAGS =		HOME=${WRKSRC}/nugethome

SUBST_VARS +=		LOCALSTATEDIR

do-gen:
	${SUBST_CMD} ${WRKSRC}/launch-game.sh
	${SUBST_CMD} ${WRKSRC}/launch-dedicated.sh
	${SUBST_CMD} ${WRKSRC}/OpenRA.Game/Network/GeoIP.cs

# overwrite the config files that point to the wrong system libraries
post-install:
	cd ${WRKSRC} && ${MAKE_PROGRAM} install-linux-shortcuts
	${INSTALL_SCRIPT} ${WRKSRC}/launch-game.sh ${PREFIX}/bin/openra
	${INSTALL_SCRIPT} ${WRKSRC}/launch-dedicated.sh \
		${PREFIX}/bin/openra-dedicated
	cp ${FILESDIR}/*.config ${PREFIX}/share/openra/

.include <bsd.port.mk>
