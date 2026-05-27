COMMENT =		set temporary X11 hotkeys

DISTNAME =		hk-0.3.3
CATEGORIES =		x11

HOMEPAGE =		https://tratt.net/laurie/src/hk/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# Apache-2.0 / MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 c

SITES =			${HOMEPAGE}releases/

EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	gnu

TEST_DEPENDS =		x11/xdotool
TEST_TARGET =		test

.include <bsd.port.mk>
