# $OpenBSD: Makefile,v 1.1.1.1 2022/01/15 20:27:51 op Exp $

COMMENT =	multi-protocol browser for the small internet
V =		0.7.1
DISTNAME =	telescope-${V}

CATEGORIES =	net

HOMEPAGE =	https://telescope.omarpolo.com

MAINTAINER =	Omar Polo <op@omarpolo.com>

# ISC
PERMIT_PACKAGE =	Yes

# use pledge()
# use unveil()
WANTLIB += c curses event tls util

MASTER_SITES = https://github.com/omar-polo/telescope/releases/download/${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
