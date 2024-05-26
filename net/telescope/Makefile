COMMENT =	multi-protocol browser for the small internet
V =		0.9.1
DISTNAME =	telescope-${V}

CATEGORIES =	net

HOMEPAGE =	https://telescope.omarpolo.com

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC, Public Domain, 3BSD and MIT
PERMIT_PACKAGE =	Yes

# use pledge()
# use unveil()
WANTLIB += c crypto curses grapheme ssl tls util

LIB_DEPENDS =	textproc/libgrapheme

SITES = 	https://ftp.omarpolo.com/ \
		https://github.com/omar-polo/telescope/releases/download/${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
