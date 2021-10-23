# $OpenBSD: Makefile,v 1.1.1.1 2021/09/08 08:07:05 fcambus Exp $

COMMENT =		curses UI front-end for sfeed
DISTNAME =		sfeed_curses-1.0
CATEGORIES =		www

HOMEPAGE =		https://codemadness.org/sfeed_curses.html

MAINTAINER =		Hiltjo Posthuma <hiltjo@codemadness.org>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://codemadness.org/releases/sfeed_curses/

# uses pledge()
WANTLIB +=		c curses

MAKE_FLAGS =		CC='${CC}' \
			CFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}'

# optional run-time dependencies:
# for opening links or enclosures: xdg-open
# for the sfeed_content script and converting HTML to plain-text: lynx
# for copying a link to the clipboard: xclip

RUN_DEPENDS =		www/sfeed

NO_TEST =		Yes

.include <bsd.port.mk>
