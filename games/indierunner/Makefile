COMMENT =	launch independent games

V =		0.2
DISTNAME =	IndieRunner-v${V}
PKGNAME =	indierunner-${V}

CATEGORIES =	games

HOMEPAGE =	https://github.com/IndieRunner/IndieRunner
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

SITES =		https://github.com/IndieRunner/IndieRunner/releases/download/v${V}/

MODULES =	perl

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install
RUN_DEPENDS =	archivers/p7zip \
		converters/p5-JSON \
		devel/p5-File-Share \
		devel/p5-File-Find-Rule \
		devel/p5-Path-Tiny \
		devel/p5-Readonly \
		devel/sdl2-mixer \
		games/fna/fna \
		games/godot \
		games/gzdoom \
		games/hlsteam \
		games/libcsteamworks \
		games/libgdx/1.9.9 \
		games/libgdx/1.9.11 \
		games/love/0.8 \
		games/love/0.10 \
		games/love/11 \
		games/luasteam \
		games/lwjgl \
		games/lwjgl3 \
		games/rigg \
		games/scummvm \
		games/steamworks-nosteam \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/png \
		misc/libstubborn \
		misc/p5-File-LibMagic \
		multimedia/libtheora \
		multimedia/libtheorafile \
		multimedia/libtheoraplay \
		textproc/p5-Text-Glob

TEST_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-CheckManifest \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
