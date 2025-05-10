COMMENT =	multi-protocol browser for the small internet
V =		0.11
DISTNAME =	telescope-${V}

CATEGORIES =	net

HOMEPAGE =	https://telescope-browser.org

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC, Public Domain, 3BSD and MIT
PERMIT_PACKAGE =	Yes

# use pledge()
# use unveil()
WANTLIB += c crypto curses grapheme ssl tls util

LIB_DEPENDS =	textproc/libgrapheme

SITES = 	https://ftp.telescope-browser.org/ \
		https://github.com/telescope-browser/telescope/releases/download/${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
