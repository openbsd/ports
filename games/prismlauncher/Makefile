COMMENT =		free and open-source launcher for Minecraft

V =			11.0.3
DISTNAME =		PrismLauncher-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		games
HOMEPAGE =		https://prismlauncher.org/

MAINTAINER =		Daniil Ryvkin <mail@leinadr.com>

SITES =			https://github.com/PrismLauncher/PrismLauncher/releases/download/${V}/

# GPL-3.0-only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6NetworkAuth Qt6OpenGL Qt6Widgets Qt6Xml archive
WANTLIB += c cmark m qrencode tomlplusplus z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt6 \
			java
MODJAVA_VER =		17+

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			textproc/scdoc \
			textproc/tomlplusplus

LIB_DEPENDS =		archivers/libarchive \
			graphics/libqrencode \
			textproc/cmark \
			textproc/tomlplusplus \
			x11/qt6/qtnetworkauth

RUN_DEPENDS =		java/javaPathHelper \
			games/lwjgl3 \
			games/lwjgl

CONFIGURE_ARGS =	-DLauncher_BUILD_PLATFORM=openbsd \
			-DLauncher_ENABLE_JAVA_DOWNLOADER=OFF \
			-DBUILD_TESTING=OFF \
			-DENABLE_LTO=OFF \
			-DLauncher_USE_PCH=OFF

.include <bsd.port.mk>
