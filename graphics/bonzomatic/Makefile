# $OpenBSD: Makefile,v 1.7 2022/02/06 19:21:02 kn Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		tool for live-coding pixel shaders

GH_ACCOUNT =		Gargaj
GH_PROJECT =		Bonzomatic
GH_TAGNAME =		2022-02-05
REVISION =		0
PKGNAME =		bonzomatic-${GH_TAGNAME:S/-//g}

CATEGORIES =		graphics

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# public domain, with ${WRKSRC}/external/ components:
# Scintilla:	MIT
# jsonxx:	MIT
# kiss_fft:	Unlicense
# miniaudio:	public domain
# stb:		public domain
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU X11 Xext Xi Xmu c fontconfig
WANTLIB += glfw m

MODULES =		devel/cmake

LIB_DEPENDS =		graphics/glew \
			graphics/glfw

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# C++
COMPILER =		base-clang ports-gcc

NO_TEST =		Yes

CONFIGURE_ARGS =	-DBONZOMATIC_USE_SYSTEM_GLEW=ON \
			-DBONZOMATIC_USE_SYSTEM_GLFW=ON

# ${WRKSRC}/src/platform_x11/Misc.cpp:11:10:
#    fatal error: 'fontconfig/fontconfig.h' file not found
CONFIGURE_ARGS +=	-DBZC_PROJECT_INCLUDES=${X11BASE}/include

# ld: error: unable to find library -lglfw (and numerous other libs)
CONFIGURE_ARGS +=	-DBZC_LINK_DIRS='${X11BASE}/lib;${LOCALBASE}/lib'

.if DEBUG
MODCMAKE_DEBUG =	Yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bonzomatic/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/bonzomatic/

.include <bsd.port.mk>
