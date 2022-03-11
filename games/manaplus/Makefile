V =		2.1.3.17
REVISION =	0
COMMENT =	client for The Mana World
DISTNAME =	manaplus-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://manaplus.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 SDL2_gfx-1.0 SDL2_image
WANTLIB += SDL2_mixer SDL2_net SDL2_ttf X11 c curl execinfo iconv
WANTLIB += intl m png xml2 z

MASTER_SITES =	http://download.evolonline.org/manaplus/download/${V}/

# Base gcc miscompiles on at least macppc
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/sdl2-gfx \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf \
		net/curl \
		textproc/libxml

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS =	--without-librt \
			--with-sdl2 \
			--without-internalsdlgfx

FAKE_FLAGS +=	desktopdir=${PREFIX}/share/applications/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

.include <bsd.port.mk>
