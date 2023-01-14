COMMENT =	display notifications read from standard input

GH_ACCOUNT =	phillbush
GH_PROJECT =	xnotify
GH_TAGNAME =	v0.9.3

CATEGORIES =	x11

MAINTAINER =	Mattia Chiozzi <mattia@chiozzi.cc>

# MIT
PERMIT_PACKAGE = yes

# uses pledge()
WANTLIB += Imlib2 X11 Xft Xinerama c fontconfig

LIB_DEPENDS =	graphics/imlib2

FAKE_FLAGS =	MANPREFIX="${TRUEPREFIX}/man" \
		PREFIX="${TRUEPREFIX}"

NO_TEST =	Yes

.include <bsd.port.mk>
