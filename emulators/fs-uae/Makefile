# $OpenBSD: Makefile,v 1.13 2013/09/10 10:23:34 edd Exp $

BROKEN-powerpc =	error: invalid 'asm': invalid %k value
BROKEN-alpha =		error: invalid 'asm': invalid %xn code
BROKEN-sparc64 =	error: invalid 'asm': invalid operand output code

COMMENT =		modern Amiga emulator
V =			2.2.3
REVISION =		0
MODPY_EGG_VERSION =	${V}
DISTNAME =		fs-uae-$V
CATEGORIES =		emulators

HOMEPAGE =		http://fengestad.no/fs-uae/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL X11 c freetype glib-2.0 gthread-2.0 m openal png
WANTLIB += pthread stdc++ z

MASTER_SITES =		${HOMEPAGE}stable/$V/

MODULES =		devel/gettext \
			lang/python
MODPY_SETUPTOOLS =	Yes
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			audio/openal \
			devel/glib2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			x11/py-wxPython \
			devel/pygame

USE_GMAKE =		Yes

MAKE_FLAGS +=		prefix=${PREFIX} CXXFLAGS="${CXXFLAGS}" CFLAGS="${CFLAGS}"

NO_TEST =		Yes

# Hack to prevent Python module doing it's own do-build/do-install
CONFIGURE_STYLE =	not_setup_tools

post-build:
	cd ${WRKSRC}/launcher && \
	mkdir -p fs_uae_launcher.egg-info && \
	    ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${MODPY_SETUP} build

post-install:
	cd ${WRKSRC}/launcher && \
	    ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${MODPY_SETUP} ${MODPY_DISTUTILS_INSTALL}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fs-uae
	mv ${PREFIX}/share/doc/fs-uae/example.conf \
		${PREFIX}/share/examples/fs-uae/fs-uae.conf
	${SUBST_CMD} ${PREFIX}/share/examples/fs-uae/fs-uae.conf

.include <bsd.port.mk>
