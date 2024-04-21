COMMENT =		enhanced release of Doom and Heretic

V =			6.0
GH_ACCOUNT =		fabiangreffrath
GH_PROJECT =		crispy-doom
GH_TAGNAME =		crispy-doom-${V}
DISTNAME =		crispy-doom-${V}
REVISION =		0

CATEGORIES =		games x11

HOMEPAGE =		https://crispy-doom.org/
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
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

# python just used for generating manpages
MODULES =		lang/python
MODPY_RUNDEP =		No

post-install:
	# data files get installed to this directory
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
	# rename manpages that conflict with chocolate-doom package
	mv ${PREFIX}/man/man5/{,crispy_}default.cfg.5
	mv ${PREFIX}/man/man5/{,crispy_}heretic.cfg.5
	mv ${PREFIX}/man/man5/{,crispy_}hexen.cfg.5
	mv ${PREFIX}/man/man5/{,crispy_}strife.cfg.5
	# rm useless manpages that only reference docgen
	rm ${PREFIX}/man/man6/crispy-{doom,heretic,hexen,strife}-setup.6

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
