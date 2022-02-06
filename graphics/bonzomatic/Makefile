# $OpenBSD: Makefile,v 1.6 2022/02/06 17:41:43 kn Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		tool for live-coding pixel shaders

GH_ACCOUNT =		Gargaj
GH_PROJECT =		Bonzomatic
GH_TAGNAME =		2022-02-05
PKGNAME =		bonzomatic-${GH_TAGNAME:S/-//g}

CATEGORIES =		graphics

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# public domain, with ${WRKSRC}/external/ components:
# GLEW:		modified BSD, MIT
# GLFW:		Zlib
# Scintilla:	MIT
# jsonxx:	MIT
# kiss_fft:	Unlicense
# miniaudio:	public domain
# stb:		public domain
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} GL X11 c fontconfig m

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# C++
COMPILER =		base-clang

NO_TEST =		Yes

# ${WRKSRC}/src/platform_x11/Misc.cpp:11:10:
#    fatal error: 'fontconfig/fontconfig.h' file not found
CONFIGURE_ARGS =	-DBZC_PROJECT_INCLUDES=${X11BASE}/include

# ${WRKSRC}/external/glew/GL/glew.h:1202:14:
#    fatal error: 'GL/glu.h' file not found
CFLAGS +=		-I${X11BASE}/include

.if DEBUG
MODCMAKE_DEBUG =	Yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bonzomatic/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/bonzomatic/

.include <bsd.port.mk>
