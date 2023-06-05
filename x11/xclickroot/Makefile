COMMENT =	click on root window and run a command

GH_ACCOUNT =	phillbush
GH_PROJECT =	xclickroot
GH_TAGNAME =	v1.4.0

CATEGORIES =	x11
HOMEPAGE =	https://github.com/phillbush/xclickroot
MAINTAINER =	Alexander Arkhipov <aa@manpager.net>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB +=	X11 c

FAKE_FLAGS =	PREFIX=${PREFIX} \
		MANPREFIX=${PREFIX}/man

MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

.include <bsd.port.mk>
