# $OpenBSD: Makefile,v 1.5 2016/09/01 17:21:43 yasuoka Exp $

COMMENT =		watch the command output with interval timer

V = 			1.0.4
GH_ACCOUNT =		iij
GH_PROJECT =		iwatch
GH_TAGNAME =		v${V}
DISTNAME =      	${GH_PROJECT}-${V}

CATEGORIES =		sysutils

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses

MAKE_FLAGS =		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
