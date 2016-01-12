# $OpenBSD: Makefile,v 1.3 2016/01/12 13:15:20 ajacoutot Exp $

COMMENT =		watch the command output with interval timer

V = 			1.0.3
GH_ACCOUNT =		iij
GH_PROJECT =		iwatch
GH_TAGNAME =		v${V}
DISTNAME =      	${GH_PROJECT}-${V}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses

MAKE_FLAGS =		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
