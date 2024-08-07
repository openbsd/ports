COMMENT =	typesetting system and improved layout engine

V =		0.9.4
PKGNAME =	sile-$V
REVISION =	5

SHARED_LIBS +=  texpdf                    0.0 # 0.0

CATEGORIES =	print

HOMEPAGE =	http://sile-typesetter.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} expat fontconfig freetype glib-2.0 graphite2
WANTLIB += harfbuzz iconv icudata icui18n icuio icuuc intl m pcre2-8
WANTLIB += png pthread z ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

SITES =		https://github.com/simoncozens/sile/releases/download/v$V/
SITES.pdf =	http://sile-typesetter.org/images/

DISTFILES =		sile-$V.tar.bz2
DISTFILES.pdf = 	sile-$V.pdf
EXTRACT_ONLY =		${DISTFILES}

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
	rm ${PREFIX}/share/sile/core/font.lua${PATCHORIG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sile
	${INSTALL_DATA} ${DISTDIR}/sile-$V.pdf ${PREFIX}/share/doc/sile/sile.pdf

.include <bsd.port.mk>
