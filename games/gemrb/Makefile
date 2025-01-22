SHARED_LIBS += 		gemrb_core 0.0

COMMENT =		open-source implementation of Bioware's Infinity Engine

V =			0.9.4
DISTNAME =		gemrb-sources-${V}
PKGNAME =		gemrb-${V}

CATEGORIES =		games emulators x11

HOMEPAGE =		https://www.gemrb.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=gemrb/}

WANTLIB += GL GLU SDL2 SDL2_mixer c freetype iconv m openal png pthread
WANTLIB += vlc vorbisfile z ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
LIB_DEPENDS =		audio/openal \
			devel/sdl2-mixer \
			graphics/png \
			x11/vlc \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+4,-guic

CONFIGURE_ARGS +=	-DSYSCONF_DIR=${SYSCONFDIR}/gemrb \
			-DEXAMPLE_CONF_DIR=${PREFIX}/share/examples/gemrb/ \
			-DMAN_DIR=${PREFIX}/man/man6 \
			-DDISABLE_WERROR=1 \
			-DOPENGL_BACKEND=OpenGL \
			-DSANITIZE=None \
			-DSDL_BACKEND=SDL2 \
			-Wno-dev

NO_TEST =		Yes

CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

WRKDIST =		${WRKDIR}/gemrb-${V}

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	 ${MODPY_COMPILEALL} ${PREFIX}/share/gemrb/GUIScripts
	 ${SUBST_CMD} -m 444 -c ${FILESDIR}/baldurs_gate_1.cfg \
		 ${PREFIX}/share/examples/gemrb/baldurs_gate_1.cfg

.include <bsd.port.mk>
