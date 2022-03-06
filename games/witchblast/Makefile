# $OpenBSD: Makefile,v 1.6 2022/03/06 00:53:19 kmos Exp $

BROKEN-sparc64 =	undefined reference to XRRConfigRotations, etc.

COMMENT =	roguelite dungeon crawler game

GH_ACCOUNT =	Cirrus-Minor
GH_PROJECT =	witchblast
GH_TAGNAME =	v0.7.5
REVISION =	2

CATEGORIES =	games x11

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3, Music is CC-BY-NC-SA, fonts are SIL Open Font License
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += sfml-audio sfml-graphics sfml-system sfml-window

CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

COMPILER =		base-clang ports-gcc

# Dependencies
MODULES =		devel/cmake
LIB_DEPENDS =		multimedia/sfml

NO_TEST =		Yes

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/witchblast ${PREFIX}/bin/witchblast

.include <bsd.port.mk>
