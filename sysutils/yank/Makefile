COMMENT =	yank terminal output to clipboard

V =		1.3.0
DISTNAME =	yank-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mptre/yank
MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/mptre/yank/releases/download/v${V}/

# uses pledge()
WANTLIB +=	c

RUN_DEPENDS =	x11/xsel

FAKE_FLAGS =	MANPREFIX=${PREFIX}/man

NO_TEST =	Yes

.include <bsd.port.mk>
