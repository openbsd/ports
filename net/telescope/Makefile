COMMENT =	multi-protocol browser for the small internet
V =		0.8.1
DISTNAME =	telescope-${V}

CATEGORIES =	net

HOMEPAGE =	https://telescope.omarpolo.com

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# use pledge()
# use unveil()
WANTLIB += c curses event tls util

SITES = 	https://github.com/omar-polo/telescope/releases/download/${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
