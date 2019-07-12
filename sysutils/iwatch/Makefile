# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:44 sthen Exp $

COMMENT =		watch the command output with interval timer

V = 			1.0.4
GH_ACCOUNT =		iij
GH_PROJECT =		iwatch
GH_TAGNAME =		v${V}
DISTNAME =      	${GH_PROJECT}-${V}

CATEGORIES =		sysutils

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses

MAKE_FLAGS =		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
