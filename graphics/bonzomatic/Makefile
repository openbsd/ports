# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:56 sthen Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		tool for live-coding pixel shaders

GH_ACCOUNT =		Gargaj
GH_PROJECT =		Bonzomatic
GH_TAGNAME =		2019-03-26
PKGNAME =		bonzomatic-${GH_TAGNAME:S/-//g}

CATEGORIES =		graphics

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# public domain, with ${WRKSRC}/external/ components:
# GLEW:		modified BSD, MIT
# GLFW:		Zlib
# Scintilla:	MIT
# jsonxx:	MIT
# kiss_fft:	Unlicense
# min_al:	public domain
# stb:		public domain
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL X11 Xcursor Xinerama Xrandr Xxf86vm c m

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# C++
COMPILER =		base-clang

NO_TEST =		Yes

# ${WRKSRC}/external/glew/GL/glew.h:1202:14:
#    fatal error: 'GL/glu.h' file not found
CFLAGS +=		-I${X11BASE}/include

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/platform_x11/Misc.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bonzomatic/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/bonzomatic/

.include <bsd.port.mk>
