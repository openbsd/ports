# $OpenBSD: Makefile,v 1.21 2019/08/22 10:06:46 kn Exp $

# tome4 ships embedded copy of luajit wich is known to
# work on the arches listed below.
# Other arches will fail with
# ../src/luajit2/src/lj_arch.h:55:2: error: #error "No support for
# this architecture (yet)"
ONLY_FOR_ARCHS = i386 amd64

COMMENT-main =	graphical sdl rogue-like game
COMMENT-data =	data for Tales of Maj'Eyal

V =		1.5.10
PKGNAME-main =	tome4-${V}
PKGNAME-data =	tome4-data-${V}
CATEGORIES =	games x11
REVISION-main =	0

MASTER_SITES =	http://te4.org/dl/t-engine/ \
		http://distfiles-openbsd.perso.pw/
DISTNAME =	t-engine4-src-${V}
EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	https://te4.org/

MULTI_PACKAGES =-main -data

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# GPLV3+ and bundled MIT, zlib, BSD in games/thirdparty/licenses/
PERMIT_PACKAGE =	Yes

WANTLIB-main =	GL GLU SDL2 SDL2_image SDL2_ttf openal c m \
		png pthread vorbisfile

BUILD_DEPENDS =	devel/premake4

LIB_DEPENDS-main =	devel/sdl2 \
			devel/sdl2-image \
			devel/sdl2-ttf \
			audio/libvorbis \
			audio/openal

RUN_DEPENDS-main =	games/tome4,-data

LIB_DEPENDS-data =
WANTLIB-data =

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

# c++abi certainly pulled out by luajit when using clang
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
WANTLIB-main += c++abi
PATCH_LIST =	patch-* lld-linking
.endif

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/premake4
CONFIGURE_ARGS =	${MAKE_PROGRAM}

NO_TEST =	Yes

USE_GMAKE =	Yes
MAKE_FLAGS =	verbose=1 CC='${CC}'
MAKE_ENV =	config=release

GAMEDIR =	${PREFIX}/share/tome4
SUBST_VARS +=	GAMEDIR V

post-patch:
	sed -i 's/gcc /${CC} /g' ${WRKSRC}/build/te4core.lua
	${SUBST_CMD} ${WRKSRC}/src/getself.c ${WRKSRC}/premake4.lua

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/t-engine ${PREFIX}/bin/tome4
	${INSTALL_DATA_DIR} ${GAMEDIR}
	cd ${WRKSRC} && pax -rw -s,*${PATCHORIG},, \
	    -s,game/modules/example\*,, bootstrap/ game/ ${GAMEDIR}

.include <bsd.port.mk>
