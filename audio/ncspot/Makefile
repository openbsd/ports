# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =         sparc64

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =		ncurses Spotify client

GH_ACCOUNT =		hrkfdn
GH_PROJECT =		ncspot
GH_TAGNAME =		v1.1.1

CATEGORIES =		audio

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto curses dbus-1 m portaudio ssl	

MODULES =		devel/cargo
LIB_DEPENDS=		audio/portaudio-svn \
			x11/dbus,-main

SEPARATE_BUILD =	Yes
NO_TEST =		Yes

CONFIGURE_STYLE =	cargo

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	cursive/termion-backend \
			mpris \
			portaudio_backend

.include "crates.inc"

DOCDIR =	${PREFIX}/share/doc/ncspot/

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}

.include <bsd.port.mk>
