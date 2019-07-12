# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:57 sthen Exp $

COMMENT =	typesetting system and improved layout engine

V =		0.9.4
PKGNAME =	sile-$V
REVISION =	4

SHARED_LIBS +=  texpdf                    0.0 # 0.0

CATEGORIES =	print

HOMEPAGE =	http://sile-typesetter.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} expat fontconfig freetype glib-2.0 graphite2
WANTLIB += harfbuzz iconv icudata icui18n icuio icuuc intl m pcre
WANTLIB += png pthread z ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/simoncozens/sile/releases/download/v$V/
MASTER_SITES0 =		http://sile-typesetter.org/images/

DISTFILES =		sile-$V.tar.bz2 \
			sile-$V.pdf:0
EXTRACT_ONLY =		sile-$V.tar.bz2

MODULES =		lang/lua
MODLUA_VERSION =	5.2
MODLUA_BUILD_DEPENDS +=	devel/lpeg \
			devel/luafs \
			textproc/luaexpat
MODLUA_RUN_DEPENDS +=	devel/lpeg \
			devel/luafs \
			textproc/luaexpat
LIB_DEPENDS =		converters/libiconv \
			devel/harfbuzz \
			graphics/png \
			textproc/icu4c
RUN_DEPENDS =		fonts/gentium

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${MODLUA_INCL_DIR} `pkg-config --cflags libpng`" \
			LDFLAGS=-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/sile-$V

post-install:
	rm ${PREFIX}/share/sile/core/font.lua.orig
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sile
	${INSTALL_DATA} ${DISTDIR}/sile-$V.pdf ${PREFIX}/share/doc/sile/sile.pdf

.include <bsd.port.mk>
