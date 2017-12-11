# $OpenBSD: Makefile,v 1.91 2017/12/11 22:31:40 bcallah Exp $

V =		1.7.11.11
COMMENT =	client for The Mana World
DISTNAME =	manaplus-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://manaplus.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 SDL2_gfx SDL2_image SDL2_mixer
WANTLIB += SDL2_net SDL2_ttf X11 c crypto curl execinfo iconv
WANTLIB += intl m nghttp2 png ssl xml2 z

MASTER_SITES =	http://download.evolonline.org/manaplus/download/${V}/

# Base gcc miscompiles on at least macppc
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/gettext-tools

LIB_DEPENDS =	devel/gettext \
		devel/libexecinfo \
		devel/sdl2-gfx \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf \
		net/curl \
		textproc/libxml

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS =	--without-librt \
			--with-sdl2 \
			--without-internalsdlgfx

FAKE_FLAGS +=	desktopdir=${PREFIX}/share/applications/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
