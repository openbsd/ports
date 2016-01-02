# $OpenBSD: Makefile,v 1.2 2016/01/02 14:59:06 jasper Exp $

COMMENT =		watch the command output with interval timer

V = 			1.0.3
GH_ACCOUNT =		iij
GH_PROJECT =		iwatch
GH_TAGNAME =		v${V}
DISTNAME =      	${GH_PROJECT}-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

MAINTAINER =		YASUOKA Masahiko <yasuoka@iij.ad.jp>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses

MAKE_FLAGS =		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
