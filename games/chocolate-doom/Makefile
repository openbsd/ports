COMMENT =	portable release of Doom, Heretic, Hexen, and Strife
V =		3.1.0
DIST_TUPLE =	github chocolate-doom chocolate-doom chocolate-doom-${V} .
PKGNAME =	chocolate-doom-${V}
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	https://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net c fluidsynth m png pthread
WANTLIB += samplerate

LIB_DEPENDS =	audio/fluidsynth \
		audio/libsamplerate \
		devel/sdl2-mixer \
		devel/sdl2-net \
		graphics/png

MODULES =	lang/python

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	man/{docgen,simplecpp}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_STYLE =	autoreconf
AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.71
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-extract:
	# set correct data directory
	@sed -i 's,"/games/doom","/doom",g' ${WRKSRC}/src/d_iwad.c
	# set correct python binary name
	@sed -i 's/HAVE_PYTHON, python/HAVE_PYTHON, python${MODPY_MAJOR_VERSION}/' \
		${WRKSRC}/configure.ac
 
post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/

.include <bsd.port.mk>
