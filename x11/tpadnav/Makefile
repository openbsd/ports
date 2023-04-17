COMMENT=	generate back and forward navigation events from touchpad

GH_ACCOUNT=	jcs
GH_PROJECT=	tpadnav
GH_TAGNAME=	v2.0

CATEGORIES=	x11

MAINTAINER=     joshua stein <jcs@jcs.org>

# BSD
PERMIT_PACKAGE= Yes

# uses pledge()
WANTLIB+=       X11 Xi c Xtst

FAKE_FLAGS=     DESTDIR=

NO_TEST=        Yes

.include <bsd.port.mk>
