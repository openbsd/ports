# $OpenBSD: Makefile,v 1.39 2020/04/15 13:31:42 fcambus Exp $

BROKEN-i386 =	broken on 32-bit; enum in src/frontend/mame/ui/videoopt.h starting at 0x80000000
ONLY_FOR_ARCHS = amd64 i386

USE_WXNEEDED =	Yes

COMMENT =	Multiple Arcade Machine Emulator

V =		220
GH_ACCOUNT =	mamedev
GH_PROJECT =	mame
GH_TAGNAME =	mame0${V}
DISTNAME =	mame-0.${V}
REVISION =	0

CATEGORIES =	emulators

HOMEPAGE =	https://mamedev.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL SDL2 SDL2_ttf X11 Xext Xi
WANTLIB += Xinerama c expat fontconfig freetype jpeg lua5.3 m
WANTLIB += sqlite3 util z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	lang/lua \
		lang/python

MODLUA_VERSION = 5.3

MODPY_RUNDEP = No

LIB_DEPENDS =	audio/flac \
		databases/sqlite3 \
		devel/sdl2 \
		devel/sdl2-ttf \
		graphics/jpeg

CFLAGS +=	-I${PREFIX}/include -I${X11BASE}/include -I${MODLUA_INCL_DIR}
CFLAGS +=	-Wno-ignored-qualifiers -fno-ret-protector

MAKE_ENV =	NOWERROR=1 TOOLS=1 verbose=1 \
		OVERRIDE_CC="${CC}" OVERRIDE_CXX="${CXX}" OVERRIDE_LD="${CXX}" \
		OPT_FLAGS="${CXXFLAGS}" \
		PYTHON_EXECUTABLE="${MODPY_BIN}" \
		USE_SYSTEM_LIB_EXPAT=1 \
		USE_SYSTEM_LIB_ZLIB=1 \
		USE_SYSTEM_LIB_JPEG=1 \
		USE_SYSTEM_LIB_FLAC=1 \
		USE_SYSTEM_LIB_LUA=1 \
		USE_SYSTEM_LIB_SQLITE3=1 \
		USE_QTDEBUG=0 # avoid depending on Qt

.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV +=	PTR64=1
.endif

CONFIGURE_STYLE = none

USE_GMAKE =	Yes

MAKE_FILE =	makefile

NO_TEST =	Yes

post-extract:
	@mv ${WRKSRC}/3rdparty/genie/build/gmake.freebsd \
		${WRKSRC}/3rdparty/genie/build/gmake.bsd
	@sed -i 's,"lua","lua${MODLUA_VERSION}",g' ${WRKSRC}/scripts/extlib.lua
	@mv ${WRKSRC}/src/lib/util/png.h ${WRKSRC}/src/lib/util/localpng.h
	@sed -i 's,"util/png.h","png.h",' \
		${WRKSRC}/src/frontend/mame/ui/icorender.cpp
	@grep -Rl '"png\.h"' ${WRKSRC}/src | \
		xargs sed -i 's|"png.h"|"localpng.h"|'
	@perl -pi -e 's/\r//g' ${WRKSRC}/makefile ${WRKSRC}/scripts/genie.lua \
		${WRKSRC}/3rdparty/genie/build/gmake.bsd/genie.make \
		${WRKSRC}/3rdparty/asio/include/asio/detail/config.hpp \
		${WRKSRC}/docs/man/* ${WRKSRC}/keymaps/*

do-install:
.if ${MACHINE_ARCH} == "amd64"
	${INSTALL_PROGRAM} ${WRKSRC}/mame64 ${PREFIX}/bin/mame
.else
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/mame
.endif
	${INSTALL_DATA} ${WRKSRC}/docs/man/mame.6 ${PREFIX}/man/man6
.for f in castool chdman floptool imgtool jedutil ldresample ldverify romcmp
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/man/${f}.1 ${PREFIX}/man/man1
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/mame
	@cp -r ${WRKSRC}/artwork ${PREFIX}/share/mame
	${INSTALL_DATA_DIR} ${PREFIX}/share/mame/keymaps
.for l in be br ch de es fr gb it pt se
	${INSTALL_DATA} ${WRKSRC}/keymaps/km_${l}_LINUX.map \
		${PREFIX}/share/mame/keymaps/km_${l}.map
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mame
	${SUBST_DATA} ${FILESDIR}/mame.ini \
		${PREFIX}/share/examples/mame/mame.ini

.include <bsd.port.mk>
