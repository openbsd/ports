# $OpenBSD: Makefile,v 1.7 2017/08/24 09:45:23 sthen Exp $

COMMENT =	typesetting system and improved layout engine

V =		0.9.4
PKGNAME =	sile-$V
REVISION =	1

SHARED_LIBS +=  texpdf                    0.0 # 0.0

CATEGORIES =	print

HOMEPAGE =	http://sile-typesetter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} expat fontconfig freetype glib-2.0 graphite2
WANTLIB += harfbuzz icudata icui18n icuio icuuc m pcre
WANTLIB += png pthread pthread-stubs z ${MODLUA_WANTLIB}

MASTER_SITES =		https://github.com/simoncozens/sile/releases/download/v$V/
MASTER_SITES0 =		http://sile-typesetter.org/images/

DISTFILES =		sile-$V.tar.bz2 \
			sile-$V.pdf:0
EXTRACT_ONLY =		sile-$V.tar.bz2

MODULES =		devel/gettext \
			lang/lua
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
