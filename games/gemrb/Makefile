# $OpenBSD: Makefile,v 1.14 2019/07/31 07:55:32 kirby Exp $

SHARED_LIBS += 		gemrb_core 0.0

COMMENT =		open-source implementation of Bioware's Infinity Engine

DISTNAME =		gemrb-0.8.5
REVISION =		3

CATEGORIES =		games emulators x11

HOMEPAGE =		http://www.gemrb.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gemrb/}

WANTLIB += SDL SDL_mixer c freetype iconv m openal png pthread
WANTLIB += vlc vorbisfile z ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python
LIB_DEPENDS =		audio/openal \
			devel/sdl-mixer \
			graphics/png \
			x11/vlc \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DSYSCONF_DIR=${SYSCONFDIR}/gemrb \
			-DEXAMPLE_CONF_DIR=${PREFIX}/share/examples/gemrb/ \
			-DMAN_DIR=${PREFIX}/man/man6 \
			-DCMAKE_MODULE_LINKER_FLAGS=-lc \
			-DCMAKE_CXX_FLAGS=${CXXFLAGS} \
			-DDISABLE_WERROR=1

NO_TEST =		Yes

post-install:
	 cd ${PREFIX}/share/gemrb/GUIScripts/ && find * -name \*.py \
		-exec ${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/gemrb/GUIScripts/{} \;
	 ${SUBST_CMD} -m 444 -c ${FILESDIR}/baldurs_gate_1.cfg \
		 ${PREFIX}/share/examples/gemrb/baldurs_gate_1.cfg

.include <bsd.port.mk>
