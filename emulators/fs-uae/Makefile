# $OpenBSD: Makefile,v 1.4 2012/11/24 09:09:57 sthen Exp $

COMMENT =		modern Amiga emulator
V =			2.0.1
DISTNAME =		fs-uae-$V
CATEGORIES =		emulators
REVISION = 		1

HOMEPAGE =		http://fengestad.no/fs-uae/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU SDL X11 c glib-2.0 gthread-2.0 m openal png
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
			x11/py-wxPython

USE_GMAKE =		Yes
MAKE_FLAGS +=		prefix=${PREFIX}

NO_REGRESS =		Yes

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
