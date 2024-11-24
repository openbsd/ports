COMMENT =		enhanced release of Doom, Heretic, Hexen, and Strife

V =			7.0
DIST_TUPLE =		github fabiangreffrath crispy-doom crispy-doom-${V} .
PKGNAME =		crispy-doom-${V}

CATEGORIES =		games x11

HOMEPAGE =		https://fabiangreffrath.github.io/crispy-homepage/
MAINTAINER =		Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net c fluidsynth m png pthread
WANTLIB += samplerate z

LIB_DEPENDS =		audio/fluidsynth \
			audio/libsamplerate \
			devel/sdl2-mixer \
			devel/sdl2-net \
			graphics/png

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

CONFIGURE_STYLE =	autoreconf
AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.71
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

# python just used for generating manpages
MODULES =		lang/python
MODPY_RUNDEP =		No

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	# data files get installed to this directory
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
	# rm useless manpages that only reference docgen
	rm ${PREFIX}/man/man6/crispy-{doom,heretic,hexen,strife}-setup.6

.include <bsd.port.mk>
