COMMENT =	portable release of Doom, Heretic, Hexen, and Strife
V =		3.0.1
DISTNAME =	chocolate-doom-${V}
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	https://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net c m png samplerate z

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-net \
		audio/libsamplerate \
		graphics/png

MASTER_SITES =	https://www.chocolate-doom.org/downloads/${V}/

MODULES =	lang/python

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	man/{docgen,simplecpp}

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	autoreconf
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

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
