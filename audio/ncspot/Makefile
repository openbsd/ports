# $OpenBSD: Makefile,v 1.22 2021/12/28 17:48:36 kn Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =		ncurses Spotify client

GH_ACCOUNT =		hrkfdn
GH_PROJECT =		ncspot
GH_TAGNAME =		v0.9.3

CATEGORIES =		audio

MAINTAINER =		Henrik Friedrichsen <henrik@diff.cc>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi crypto curses dbus-1 m portaudio pthread ssl

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust>=1.30
LIB_DEPENDS=		audio/portaudio-svn \
			x11/dbus,-main

SEPARATE_BUILD =	Yes
NO_TEST =		Yes

CONFIGURE_STYLE =	cargo

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	cursive/pancurses-backend \
			mpris \
			portaudio_backend

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

DOCDIR =	${PREFIX}/share/doc/ncspot/

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}

.include <bsd.port.mk>
